import React from "react";
import ReactDOM from "react-dom";
import "./index.css";

import { ApolloClient } from "apollo-client";
import { HttpLink } from "apollo-link-http";
import { InMemoryCache } from "apollo-cache-inmemory";
import { ApolloProvider } from "react-apollo";
import App from "./App";

const options = {
  uri: `${process.env.REACT_APP_SERVER_IP}`,
  credentials: "include"
};

const client = new ApolloClient({
  link: new HttpLink(options),
  cache: new InMemoryCache()
});

ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
  document.getElementById("root")
);
