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
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          child: const HomeScreenWidget(),
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
