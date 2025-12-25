import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/gen/assets.gen.dart';
import 'package:quizz_app/widgets/header_clipper_widget.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ClipPath(
      clipper: HeaderClipper(),
      child: Container(
        width: double.infinity,
        height: size.height * 0.5,
        decoration: const BoxDecoration(color: Color(0xFF2D0454)),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(Assets.images.cover.path, fit: BoxFit.cover),
            ),
            Container(color: const Color(0x66000000)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.images.hint1.path,
                    height: size.height * 0.25,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    'QUIZZY',
                    style: GoogleFonts.outfit(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
