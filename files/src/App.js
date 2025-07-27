import React, { useState } from "react";
import VideoChat from "./VideoChat";
import logo from "./omelete_logo.png";
import "./App.css";

function App() {
  const [started, setStarted] = useState(false);

  return (
    <div className="app-container">
      {!started ? (
        <div className="home">
          <img src={logo} alt="OMELETE TV" className="logo" />
          <h1>OMELETE TV</h1>
          <p className="online-count">404,769 users online</p>
          <div className="button-row">
            <button className="start" onClick={() => setStarted(true)}>Start</button>
            <button className="stop" disabled>Stop</button>
            <button className="country">Country 🌎</button>
            <button className="iam">I am 👤</button>
          </div>
        </div>
      ) : (
        <VideoChat onStop={() => setStarted(false)} />
      )}
    </div>
  );
}

export default App;