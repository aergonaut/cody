import React from "react";
import PullRequestList from "../PullRequestList";
import PageHead from "./PageHead";
import environment from "../../environment";
import { QueryRenderer, graphql } from "react-relay";
import { RouteComponentProps, withRouter } from "react-router-dom";
import { PullRequestsRouteQuery } from "./__generated__/PullRequestsRouteQuery.graphql";

type Params = {
  owner: string;
  name: string;
};

function PullRequestsRoute({
  match,
}: RouteComponentProps<Params>): JSX.Element {
  return (
    <>
      <PageHead title={`${match.params.owner}/${match.params.name}`} />
      <header>
        <div className="max-w-7xl mx-auto pt-6 px-4 sm:px-6 lg:px-8">
          <h1 className="text-2xl leading-tight font-semibold text-gray-900">
            {`${match.params.owner}/${match.params.name}`}
          </h1>
        </div>
      </header>
      <QueryRenderer<PullRequestsRouteQuery>
        environment={environment}
        query={graphql`
          query PullRequestsRouteQuery($owner: String!, $name: String!) {
            viewer {
              repository(owner: $owner, name: $name) {
                ...PullRequestList_repository
              }
              login
              name
            }
          }
        `}
        variables={{
          owner: match.params.owner,
          name: match.params.name,
        }}
        render={({ error, props }) => {
          if (error) {
            return <div>{error.message}</div>;
          } else if (props && props.viewer) {
            return <PullRequestList repository={props.viewer.repository} />;
          }
          return null;
        }}
      />
    </>
  );
}

export default withRouter(PullRequestsRoute);
