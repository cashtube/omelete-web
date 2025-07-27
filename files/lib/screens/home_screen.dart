import 'package:flutter/material.dart';
import 'video_chat_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
            child: Image.asset('assets/omelete_logo.png', width: 150),
          ),
          Text('OMELETE TV', style: TextStyle(fontSize: 30, color: Colors.orange)),
          SizedBox(height: 10),
          Text('404,769 users online', style: TextStyle(color: Colors.greenAccent)),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => VideoChatScreen()));
            },
            child: Text('Start'),
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Stop'),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
          ),
          SizedBox(height: 20),
          // Add country and "I am" buttons here
          Spacer(),
        ],
      ),
    );
  }
}