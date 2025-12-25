import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome to the Quizz App!',
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(
            color: const Color(0xFFFFFFFF),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Test your knowledge and have fun with our amazing quizzes.',
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(
            color: const Color(0xCCFFFFFF),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
