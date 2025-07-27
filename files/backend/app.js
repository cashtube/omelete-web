const express = require('express');
const http = require('http');
const socketIO = require('socket.io');

const app = express();
const server = http.createServer(app);
const io = socketIO(server, {
  cors: { origin: "*" }
});

// WebRTC signaling
io.on('connection', socket => {
  socket.on('signal', data => {
    socket.broadcast.emit('signal', data);
  });
});

server.listen(3000, () => console.log('Server running on port 3000'));