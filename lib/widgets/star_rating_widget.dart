import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/star_item_widget.dart';

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
          Positioned(
            left: 15,
            bottom: 0,
            child: StarItemWidget(
              isFilled: stars >= 1,
              isLocked: isLocked,
              baseSize: starSize,
            ),
          ),
          Positioned(
            top: 0,
            child: StarItemWidget(
              isFilled: stars >= 2,
              isLocked: isLocked,
              isMain: true,
              baseSize: starSize,
            ),
          ),
          Positioned(
            right: 15,
            bottom: 0,
            child: StarItemWidget(
              isFilled: stars >= 3,
              isLocked: isLocked,
              baseSize: starSize,
            ),
          ),
        ],
      ),
    );
  }
}
