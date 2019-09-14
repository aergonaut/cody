# typed: false
require 'rails_helper'

RSpec.describe WebhooksController, type: :controller do
  shared_examples "pull_request event handler" do
    let(:payload) do
      from_fixture = json_fixture("pull_request")
      from_fixture["action"] = action
      from_fixture
    end

    let(:action) { "opened" }

    context "when the action is \"opened\"" do
      it "delegates to ReceivePullRequestEvent" do
        expect { subject }.to change(ReceivePullRequestEvent.jobs, :size).by(1)
      end
    end

    context "when the action is not \"opened\"" do
      let(:action) { "labeled" }

      it "does not create a new ReceivePullRequestEvent job" do
        expect { subject }.to_not change(ReceivePullRequestEvent.jobs, :size)
      end
    end

    it "returns 202 Accepted" do
      subject
      expect(response.status).to be(202)
    end
  end

  shared_examples "issue_comment event handler" do
    let(:payload) { json_fixture("issue_comment") }

    it "creates a new ReceiveIssueCommentEvent job" do
      expect { subject }.to change(ReceiveIssueCommentEvent.jobs, :size).by(1)
    end

    it "returns 202 Accepted" do
      subject
      expect(response.status).to be(202)
    end
  end

  describe "POST pull_request" do
    it_behaves_like "pull_request event handler" do
      subject { post :pull_request, body: JSON.dump(payload) }
    end
  end

  describe "POST issue_comment" do
    it_behaves_like "issue_comment event handler" do
      subject { post :issue_comment, body: JSON.dump(payload) }
    end
  end

  describe "POST integration" do
    context "when event is pull_request" do
      it_behaves_like "pull_request event handler" do
        before do
          request.headers["X-GitHub-Event"] = "pull_request"
        end

        subject { post :integration, body: JSON.dump(payload) }
      end
    end

    context "when event is issue_comment" do
      it_behaves_like "issue_comment event handler" do
        before do
          request.headers["X-GitHub-Event"] = "issue_comment"
        end

        subject { post :integration, body: JSON.dump(payload) }
      end
    end

    context "when event is installation_repositories" do
      let(:payload) { json_fixture("installation_repositories") }
      before do
        request.headers["X-GitHub-Event"] = "installation_repositories"
      end

      it "creates a new ReceiveInstallationRepositoriesEvent job" do
        expect { post :integration, body: JSON.dump(payload) }.to change(ReceiveInstallationRepositoriesEvent.jobs, :size).by(1)
      end

      it "passes in the array of repositories from the event payload" do
        expect(ReceiveInstallationRepositoriesEvent).to receive(:perform_async).with(payload["repositories_added"], payload["installation"]["id"])
        post :integration, body: JSON.dump(payload)
      end
    end

    context "when the event is push" do
      before do
        request.headers["X-GitHub-Event"] = "push"
      end

      let(:payload) do
        json_fixture("push", ref: ref)
      end

      subject { post :integration, body: JSON.dump(payload) }

      context "when the pushed branch is master" do
        let(:ref) { "refs/heads/master" }
        it "creates a ReceivePushEvent job" do
          expect { subject }.to change(ReceivePushEvent.jobs, :size).by(1)
        end
      end

      context "when the pushed branch is not master" do
        let(:ref) { "refs/heads/some-other-branch" }
        it "does not enqueue a job" do
          expect { subject }.to_not change(ReceivePushEvent.jobs, :size)
        end
      end
    end
  end
end
