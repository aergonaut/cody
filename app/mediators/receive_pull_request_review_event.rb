# frozen_string_literal: true

# Processing of PullRequestReviewEvents.
#
# The reviewer does not need to leave any special comment in the PR review, so
# long as the review is in the approved state.
#
# The event is processed for both the submitted and the edited actions. If the
# review is dismissed, the event is ignored.
#
# @see https://developer.github.com/v3/activity/events/types/#pullrequestreviewevent
class ReceivePullRequestReviewEvent
  include Sidekiq::Worker

  # Params permitting method.
  # N.b. if you access a new parameter within this job, you must add it to this
  # method too, otherwise it will be filtered out when the job is created!
  def self.permit(params)
    params.require(:webhook).permit(
      :action,
      review: [:state, user: [:login]],
      pull_request: [:number],
      sender: [:login],
      repository: [:full_name, :name, owner: [:login]],
      installation: [:id]
    )
  end

  def perform(request)
    Sentry.configure_scope do |scope|
      scope.set_user(username: request["sender"]["login"])
      scope.set_tags(
        event: "pull_request_review",
        repo: request["repository"]["full_name"]
      )

      do_perform(request)
    end
  end

  def do_perform(request)
    Current.reset

    request = request.with_indifferent_access

    if (installation_id = request.dig("installation", "id"))
      Current.installation_id = installation_id
    end

    PaperTrail.request(whodunnit: request[:sender][:login]) do
      receive_event(request)
    end

    Current.reset
  end

  private

  # Router to route event based on event's action and review's state
  def receive_event(request)
    pr =
      PullRequest.joins(:repository).pending_review.find_by(
        number: request[:pull_request][:number],
        repositories: {
          owner: request[:repository][:owner][:login],
          name: request[:repository][:name]
        }
      )
    return unless pr.present?

    if request[:action].downcase == "dismissed"
      on_dismissed(pr, request)
      return
    end

    case request[:review][:state].downcase
    when "approved"
      on_approve(pr, request)
    end
  end

  def on_approve(pr, request)
    record_comment_interaction(pr, request)

    author = request[:sender][:login]
    review = pr.reviewers.pending_review.find_by(login: author)
    return unless review.present?

    review.approve!

    if pr.reviewers.pending_review.empty?
      pr.status = PullRequest::STATUS_APPROVED
      pr.save!
      pr.update_status
    end

    pr.update_body
    pr.assign_reviewers

    CommandInvocation.record_invocation(
      command: "cody approve",
      args: "",
      login: request[:sender][:login],
      pull_request_id: pr.id
    )
  end

  def on_dismissed(pr, request)
    reviewer = request[:review][:user][:login]
    review = pr.reviewers.pending_review.find_by(login: reviewer)
    return unless review.present?

    # If the dismissed review was for a manually added reviewer, destroy the
    # reviewer record as well.
    if review.review_rule_id.nil?
      review.destroy!
    end

    # Not pictured: reviews belonging to generated reviewers are not allowed to
    # be dismissed via GitHub

    if pr.reviewers.pending_review.empty?
      pr.status = PullRequest::STATUS_APPROVED
      pr.save!
      pr.update_status
    end

    pr.update_body
    pr.assign_reviewers
  end

  def record_comment_interaction(pr, request)
    author = request[:sender][:login]
    review = pr.reviewers.pending_review.find_by(login: author)
    return unless review.present?

    now = Time.now.utc
    if review.first_commented_at.nil?
      review.first_commented_at = now
    end
    review.last_commented_at = now
    review.save
  end
end
