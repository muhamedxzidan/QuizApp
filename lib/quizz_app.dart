import 'package:flutter/material.dart';
import 'package:quizz_app/screens/welcome_screen_widget.dart';

class QuizzAppWidget extends StatelessWidget {
  const QuizzAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: WelcomeScreenWidget(),
    );
  }
}
