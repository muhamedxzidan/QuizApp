import 'package:flutter/material.dart';

class LevelModel {
  final String id;
  final int stars;
  final bool isLocked;
  final List<Color>? gradientColors;

  const LevelModel({
    required this.id,
    this.stars = 0,
    this.isLocked = false,
    this.gradientColors,
  });
}
