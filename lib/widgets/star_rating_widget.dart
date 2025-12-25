import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  final int stars;
  final double starSize;

  const StarRatingWidget({super.key, required this.stars, this.starSize = 28});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 50,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(left: 15, bottom: 0, child: _buildStar(stars >= 1)),
          Positioned(top: 0, child: _buildStar(stars >= 2)),
          Positioned(right: 15, bottom: 0, child: _buildStar(stars >= 3)),
        ],
      ),
    );
  }

  Widget _buildStar(bool isFilled) {
    return Icon(
      isFilled ? Icons.star : Icons.star_border,
      color: const Color(0xFFFFD700),
      size: starSize,
      shadows: const [
        Shadow(color: Color(0x42000000), blurRadius: 10, offset: Offset(0, 5)),
      ],
    );
  }
}
