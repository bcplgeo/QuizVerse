import 'package:flutter/material.dart';

// Import Home Screen
import 'screens/home_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const QuizVerseApp());
}

// Root application widget
class QuizVerseApp extends StatelessWidget {
  const QuizVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'QuizVerse',

      theme: ThemeData(
        brightness: Brightness.dark,

        primarySwatch: Colors.deepPurple,

        scaffoldBackgroundColor: const Color(0xFF121212),
      ),

      home: const SplashScreen(),
    );
  }
}