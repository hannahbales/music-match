import 'package:flutter/material.dart';
import 'screens/signup_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MusicMatchApp());
}

class MusicMatchApp extends StatelessWidget {
  const MusicMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusicMatch',
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}