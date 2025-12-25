import 'package:flutter/material.dart';
import 'package:quizz_app/screens/welcome_screen.dart';

class QuizzApp extends StatelessWidget {
  const QuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: WelcomeScreen(),
    );
  }
}
