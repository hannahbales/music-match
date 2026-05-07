import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';

void main() {
  runApp(const MusicMatchApp());
}

class MusicMatchApp extends StatelessWidget {
  const MusicMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Match',
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}