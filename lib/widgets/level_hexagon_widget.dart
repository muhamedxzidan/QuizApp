import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/star_rating_widget.dart';

import 'pentagon_clipper_widget.dart';

class LevelHexagonWidget extends StatelessWidget {
  final String level;
  final bool isLocked;
  final int stars;

  const LevelHexagonWidget({
    super.key,
    required this.level,
    this.isLocked = false,
    this.stars = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        if (!isLocked)
          Opacity(
            opacity: 0.5,
            child: ClipPath(
              clipper: PentagonClipperWidget(),
              child: Container(
                width: 106,
                height: 106,
                color: const Color(0xFFBD00FF),
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
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isLocked
                    ? [const Color(0xFFBDBDBD), const Color(0xFF757575)]
                    : [const Color(0xFF8127FF), const Color(0xFFBD00FF)],
              ),
            ),
            child: Stack(
              children: [
                if (!isLocked) ...[
                  Positioned(
                    top: -10,
                    right: -10,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0x26FFFFFF),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0x1AFFFFFF),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: -5,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0x1AFFFFFF),
                      ),
                    ),
                  ),
                ],
                Center(
                  child: isLocked
                      ? const Icon(
                          Icons.lock,
                          color: Color(0xFFFFFFFF),
                          size: 30,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              level.split('\n').first.trim(),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Color(0x42000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              level.split('\n').last.trim(),
                              style: const TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Color(0x42000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
        if (!isLocked)
          Positioned(top: -30, child: StarRatingWidget(stars: stars)),
      ],
    );
  }
}
