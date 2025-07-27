import 'package:flutter_webrtc/flutter_webrtc.dart';

class WebRTCService {
  RTCPeerConnection? _peerConnection;

  Future<void> initConnection() async {
    final config = {
      'iceServers': [
        {'url': 'stun:stun.l.google.com:19302'},
      ]
    };
    _peerConnection = await createPeerConnection(config);
    // Add further setup: media stream, signaling, etc.
  }
}