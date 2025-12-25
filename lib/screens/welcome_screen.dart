import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quizz_app/screens/home_screen.dart';
import 'package:quizz_app/widgets/custom_button.dart';
import 'package:quizz_app/widgets/welcome_content.dart';
import 'package:quizz_app/widgets/welcome_header.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E078D),
      body: Column(
        children: [
          const WelcomeHeader(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const WelcomeContent(),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const HomeScreen(),
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 600),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
