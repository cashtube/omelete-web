import React, { useRef, useEffect } from "react";

function VideoChat({ onStop }) {
  const videoRef = useRef();

  useEffect(() => {
    // Access webcam
    navigator.mediaDevices.getUserMedia({ video: true, audio: true })
      .then((stream) => {
        videoRef.current.srcObject = stream;
      })
      .catch((e) => {
        alert("Could not access camera/mic");
      });

    return () => {
      if (videoRef.current && videoRef.current.srcObject) {
        videoRef.current.srcObject.getTracks().forEach(track => track.stop());
      }
    };
  }, []);

  return (
    <div className="video-chat">
      <video ref={videoRef} autoPlay playsInline className="video-feed" />
      <div className="controls">
        <button onClick={onStop} className="stop">Stop</button>
      </div>
      <div className="chat-box">
        <p>Chat coming soon...</p>
      </div>
    </div>
  );
}

export default VideoChat;