import React from "react";
import { Query } from "react-apollo";
import gql from "graphql-tag";

import GardenView from "../Components/GardenView"

import { getGardens } from "./queryStrings";

const GetProfile = () => (
  <Query
    query={gql`
      ${getGardens}
    `}
  >
    {({ loading, error, data }) => {
      if (loading || error) {
        return null;
      }
      if (data) {
        console.log( data)
        return (
          <GardenView data={data}/>
        );
      } else {
        return null;
      }
    }}
  </Query>
);

export default GetProfile;