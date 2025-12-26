import 'package:flutter/material.dart';

class StarItemWidget extends StatelessWidget {
  final bool isFilled;
  final bool isLocked;
  final bool isMain;
  final double baseSize;

  const StarItemWidget({
    super.key,
    required this.isFilled,
    required this.isLocked,
    this.isMain = false,
    this.baseSize = 28,
  });

  @override
  Widget build(BuildContext context) {
    final Color starColor = isLocked
        ? const Color(0x80311B92)
        : (isFilled ? const Color(0xFFF7BD03) : const Color(0x33311B92));

    return Icon(
      isFilled && !isLocked ? Icons.star : Icons.star_border,
      color: starColor,
      size: isMain ? baseSize + 4 : baseSize,
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
