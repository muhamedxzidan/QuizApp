import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quizz_app/screens/home_screen_widget.dart';
import 'package:quizz_app/widgets/custom_button_widget.dart';
import 'package:quizz_app/widgets/welcome_content_widget.dart';
import 'package:quizz_app/widgets/welcome_header_widget.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E078D),
      body: Column(
        children: [
          const WelcomeHeaderWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const WelcomeContentWidget(),

                  CustomButtonWidget(
                    title: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const HomeScreenWidget(),
                          type: PageTransitionType.topToBottom,
                          duration: const Duration(milliseconds: 600),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      foregroundColor: const Color(0xFF4E078D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
                  ),

                  CustomButtonWidget(
                    onPressed: () {
                      showAboutDialog(
                        context: context,
                        children: [
                          Text('Version 1.0.0'),
                          Text('Author: Mohamed Zidan'),
                          Text('Email: mohamed.zidan@gmail.com'),
                          Text('Phone: +201012345678'),
                          Text('Copyright © 2025'),
                        ],
                      );
                    },
                    title: 'About',
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFFFFF),
                      foregroundColor: const Color(0xFF4E078D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                    ),
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
