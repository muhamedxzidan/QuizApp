import 'package:flutter/material.dart';
import 'package:quizz_app/widgets/custom_appbar_widget.dart';
import 'package:quizz_app/widgets/level_hexagon_widget.dart';
import 'package:quizz_app/widgets/level_row_widget.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E078D),
      appBar: const CustomAppbarWidget(title: 'Levels'),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(level: 'Level \n 1', stars: 3),
              rightLevel: LevelHexagonWidget(level: 'Level \n 2', stars: 2),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(level: 'Level \n 3', stars: 1),
              rightLevel: LevelHexagonWidget(level: 'Level \n 4', stars: 0),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 5',
                isLocked: true,
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 6',
                isLocked: true,
              ),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 7',
                isLocked: true,
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 8',
                isLocked: true,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
