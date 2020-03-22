import React from "react";
import { Result, Button } from "antd";
import { useHistory } from "react-router-dom";

const ComponentNotFound = () => {
  const history = useHistory();

  const changeUrl = () => {
    history.push("/");
  };

  return (
    <Result
      status="404"
      title="404"
      subTitle="Sorry, the page you visited does not exist."
      extra={
        <Button type="primary" onClick={changeUrl}>
          Back Home
        </Button>
      }
    />
  );
};

export default ComponentNotFound;
