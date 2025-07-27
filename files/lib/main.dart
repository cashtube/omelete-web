import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(OmeleteApp());

class OmeleteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMELETE',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomeScreen(),
    );
  }
}