import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/star_rating_widget.dart';

import 'pentagon_clipper_widget.dart';

class LevelHexagonWidget extends StatelessWidget {
  final String level;
  final bool isLocked;
  final int stars;
  final List<Color>? gradientColors;

  const LevelHexagonWidget({
    super.key,
    required this.level,
    this.isLocked = false,
    this.stars = 0,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    final List<Color> activeGradient =
        gradientColors ?? const [Color(0xFF8127FF), Color(0xFFBD00FF)];
    final List<Color> displayGradient = isLocked
        ? [const Color(0xCC3F0071), const Color(0xCC240046)]
        : activeGradient;
    final Color shadowColor = isLocked
        ? const Color(0x4D000000)
        : displayGradient.last.withValues(alpha: 0.5);

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: -4,
          child: Opacity(
            opacity: 0.6,
            child: ClipPath(
              clipper: PentagonClipperWidget(),
              child: Container(width: 106, height: 106, color: shadowColor),
            ),
          ),
        ),
        ClipPath(
          clipper: PentagonClipperWidget(),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: displayGradient,
              ),
            ),
            child: Stack(
              children: [
                ..._buildDecorativeBubbles(isLocked),
                Center(
                  child: Opacity(
                    opacity: isLocked ? 0.4 : 1.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          level.split('\n').first.trim(),
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          level.split('\n').last.trim(),
                          style: const TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                color: Color(0x40000000),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (isLocked)
                  const Center(
                    child: Icon(
                      Icons.lock,
                      color: Color(0xFFF7BD03),
                      size: 36,
                      shadows: [
                        Shadow(
                          color: Color(0x40000000),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -28,
          child: StarRatingWidget(stars: stars, isLocked: isLocked),
        ),
      ],
    );
  }

  List<Widget> _buildDecorativeBubbles(bool isLocked) {
    if (isLocked) return [];
    return [
      Positioned(
        top: -5,
        right: -5,
        child: _bubble(40, const Color(0x26FFFFFF)),
      ),
      Positioned(
        bottom: 5,
        left: 10,
        child: _bubble(25, const Color(0x1EFFFFFF)),
      ),
      Positioned(
        top: 25,
        left: -10,
        child: _bubble(30, const Color(0x1AFFFFFF)),
      ),
      Positioned(
        bottom: 20,
        right: 15,
        child: _bubble(15, const Color(0x14FFFFFF)),
      ),
    ];
  }

  Widget _bubble(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }
}
