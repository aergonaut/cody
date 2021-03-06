import React from "react";
import { render, screen } from "test-utils";
import { createMockEnvironment, MockPayloadGenerator } from "relay-test-utils";
import { QueryRenderer, graphql, Environment } from "react-relay";
import Reviewer from "../Reviewer";
import "@testing-library/jest-dom/extend-expect";
import { ReviewerTestSnapshotQuery } from "./__generated__/ReviewerTestSnapshotQuery.graphql";

const TestComponent = ({ environment }: { environment: Environment }) => (
  <QueryRenderer<ReviewerTestSnapshotQuery>
    environment={environment}
    query={graphql`
      query ReviewerTestSnapshotQuery @relay_test_operation {
        viewer {
          repository(owner: "test", name: "test") {
            pullRequest(number: "42") {
              reviewers {
                edges {
                  node {
                    ...Reviewer_reviewer
                  }
                }
              }
            }
          }
        }
      }
    `}
    variables={{}}
    render={({ error, props }) => {
      if (error) {
        return error.message;
      } else if (props) {
        return (
          <Reviewer
            reviewer={
              props.viewer.repository.pullRequest.reviewers.edges[0].node
            }
          />
        );
      } else {
        return <div>Loading...</div>;
      }
    }}
  />
);

let environment;
beforeEach(() => {
  environment = createMockEnvironment();
});

test("Reviewer snapshot test", () => {
  const renderedComponent = render(<TestComponent environment={environment} />);

  environment.mock.resolveMostRecentOperation((operation) =>
    MockPayloadGenerator.generate(operation)
  );

  const fragment = renderedComponent.asFragment();
  expect(fragment).toMatchSnapshot();
});

test("Reviewer renders the reviewer's login", () => {
  render(<TestComponent environment={environment} />);

  environment.mock.resolveMostRecentOperation((operation) =>
    MockPayloadGenerator.generate(operation, {
      Reviewer(_, generatedId) {
        return {
          id: `test-id-${generatedId()}`,
          login: "aergonaut",
          status: "APPROVED",
          reviewRule: null,
        };
      },
    })
  );

  expect(screen.getByTestId("reviewer-login")).toHaveTextContent("aergonaut");
});

test("Reviewer renders the review rule name if it is given", () => {
  render(<TestComponent environment={environment} />);

  environment.mock.resolveMostRecentOperation((operation) =>
    MockPayloadGenerator.generate(operation, {
      Reviewer(_, generatedId) {
        return {
          id: `test-id-${generatedId()}`,
          login: "aergonaut",
          status: "APPROVED",
          reviewRule: {
            name: "Foobar",
          },
        };
      },
    })
  );

  expect(screen.getByTestId("review-rule-name")).toHaveTextContent("Foobar");
});

test("Reviewer renders Pending Approval icon", () => {
  render(<TestComponent environment={environment} />);

  environment.mock.resolveMostRecentOperation((operation) =>
    MockPayloadGenerator.generate(operation, {
      Reviewer(_, generatedId) {
        return {
          id: `test-id-${generatedId()}`,
          login: "aergonaut",
          status: "PENDING_APPROVAL",
          reviewRule: {
            name: "Foobar",
          },
        };
      },
    })
  );

  expect(screen.getByText("Pending approval")).toBeDefined();
});
