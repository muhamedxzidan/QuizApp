import 'package:flutter/material.dart';
import 'package:quizz_app/models/level_model.dart';
import 'package:quizz_app/widgets/custom_appbar_widget.dart';
import 'package:quizz_app/widgets/level_hexagon_widget.dart';
import 'package:quizz_app/widgets/level_row_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  static const List<LevelModel> _levels = [
    LevelModel(
      id: '01',
      stars: 3,
      gradientColors: [Color(0xFF8127FF), Color(0xFFBD00FF)],
    ),
    LevelModel(
      id: '02',
      stars: 3,
      gradientColors: [Color(0xFF3D5AFE), Color(0xFF00E5FF)],
    ),
    LevelModel(
      id: '03',
      stars: 3,
      gradientColors: [Color(0xFFFF9100), Color(0xFFFFD600)],
    ),
    LevelModel(
      id: '04',
      stars: 2,
      gradientColors: [Color(0xFF00BFA5), Color(0xFF1DE9B6)],
    ),
    LevelModel(
      id: '05',
      stars: 0,
      gradientColors: [Color(0xFFFF4081), Color(0xFFF50057)],
    ),
    LevelModel(id: '06', isLocked: true),
    LevelModel(id: '07', isLocked: true),
    LevelModel(id: '08', isLocked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E078D),
      appBar: const CustomAppbarWidget(title: 'Levels'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: List.generate((_levels.length / 2).ceil(), (index) {
            final left = _levels[index * 2];
            final right = (index * 2 + 1 < _levels.length)
                ? _levels[index * 2 + 1]
                : null;

            return LevelRowWidget(
              leftLevel: _buildLevel(left),
              rightLevel: right != null
                  ? _buildLevel(right)
                  : const SizedBox(width: 100),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildLevel(LevelModel model) {
    return LevelHexagonWidget(
      level: 'Level \n ${model.id}',
      stars: model.stars,
      isLocked: model.isLocked,
      gradientColors: model.gradientColors,
    );
  }
}
