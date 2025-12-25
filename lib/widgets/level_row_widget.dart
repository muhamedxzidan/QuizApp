import 'package:flutter/material.dart';

class LevelRowWidget extends StatelessWidget {
  final Widget leftLevel;
  final Widget rightLevel;

  const LevelRowWidget({
    super.key,
    required this.leftLevel,
    required this.rightLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(children: [leftLevel, const Spacer(), rightLevel]),
    );
  }
}
