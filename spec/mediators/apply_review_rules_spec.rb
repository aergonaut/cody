# typed: false
require 'rails_helper'

RSpec.describe ApplyReviewRules do
  let(:pull_request_hash) do
    fixture = json_fixture("pr")
    fixture["number"] = "42"
    fixture
  end

  let!(:job) { ApplyReviewRules.new(pr, pull_request_hash) }

  let!(:pr) { FactoryBot.create :pull_request, number: "42" }

  let!(:repo) { FactoryBot.create :repository }

  let!(:rules) { FactoryBot.create_list :review_rule, 2, repository: repo }

  before do
    expect(Repository).to receive(:find_by_full_name).and_return(repo)

    expect(pr).to receive(:generated_reviewers).and_return(reviewers).at_least(:once)

    stub_request(:get, "https://api.github.com/repos/#{pr.repository.owner}/#{pr.repository.name}/pulls/42").
      to_return(status: 200, headers: { 'Content-Type' => 'application/json' }, body: JSON.dump(pull_request_hash))

    # stub request to update PR body
    stub_request(:patch, "https://api.github.com/repos/#{pr.repository.owner}/#{pr.repository.name}/pulls/42").
      to_return(status: 200, body: "", headers: {})

    # stub request to update PR labels
    stub_request(:post, "https://api.github.com/repos/#{pr.repository.owner}/#{pr.repository.name}/issues/42/labels").
      to_return(status: 200, body: "", headers: {})
  end

  context "when reviewers were generated" do
    let(:reviewer) { FactoryBot.build :reviewer, login: "octocat", review_rule: rules[0], pull_request: pr }
    let(:reviewers) { [reviewer] }

    let(:expected_addendum) do
      <<-ADDENDUM.chomp
## Generated Reviewers

#{reviewer.addendum}
ADDENDUM
    end

    it "updates the PR with the expected addendum" do
      job.perform

      expect(WebMock).to have_requested(
        :patch,
        "https://api.github.com/repos/#{pr.repository.owner}/#{pr.repository.name}/pulls/42"
      ).with(
        body: hash_including({
          body: pull_request_hash["body"].rstrip + "\n\n" + expected_addendum
        })
      )
    end
  end

  context "when no reviewers were generated" do
    let(:reviewers) { [] }

    it "does not make any requests" do
      job.perform

      expect(WebMock).to_not have_requested(
        :patch,
        "https://api.github.com/repos/#{pr.repository.owner}/#{pr.repository.name}/pulls/42"
      )
    end
  end
end
