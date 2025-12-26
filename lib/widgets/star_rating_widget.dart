import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  final int stars;
  final double starSize;
  final bool isLocked;

  const StarRatingWidget({
    super.key,
    required this.stars,
    this.starSize = 28,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(left: 15, bottom: 0, child: _buildStar(stars >= 1)),
          Positioned(top: 0, child: _buildStar(stars >= 2, isMain: true)),
          Positioned(right: 15, bottom: 0, child: _buildStar(stars >= 3)),
        ],
      ),
    );
  }

  Widget _buildStar(bool isFilled, {bool isMain = false}) {
    final Color starColor = isLocked
        ? const Color(0xFF311B92).withOpacity(0.5)
        : (isFilled
              ? const Color(0xFFF7BD03)
              : const Color(0xFF311B92).withOpacity(0.2));

    return Icon(
      isFilled && !isLocked ? Icons.star : Icons.star_border,
      color: starColor,
      size: isMain ? starSize + 4 : starSize,
      shadows: isLocked
          ? null
          : [
              const Shadow(
                color: Color(0x40000000),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
    );
  }
}
