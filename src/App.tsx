import React from "react";
import logo from "./logo.svg";
import "./App.css";
import Greetings from "./Greetings";
import Counter from "./Counter";
import Form from "./Form";

function App() {
  const onClick = (name: string) => {
    console.log(`${name} says hello`);
  };

  const onSubmit = (form: { name: string; description: string }) => {
    console.log(form);
  };
  return (
    <div className="App">
      <header className="App-header">
        <Greetings name=" 승진" mark=":)" onClick={onClick} />
        <Counter />
        <Form onSubmit={onSubmit} />
      </header>
    </div>
  );
}

export default App;
