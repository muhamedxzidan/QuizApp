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
          children: [
            const SizedBox(height: 20),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 01',
                stars: 3,
                gradientColors: [Color(0xFF8127FF), Color(0xFFBD00FF)],
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 02',
                stars: 3, // Changed to 3 stars as per image logic often
                gradientColors: [Color(0xFF3D5AFE), Color(0xFF00E5FF)],
              ),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 03',
                stars: 3,
                gradientColors: [Color(0xFFFF9100), Color(0xFFFFD600)],
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 04',
                stars: 2,
                gradientColors: [Color(0xFF00BFA5), Color(0xFF1DE9B6)],
              ),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 05',
                stars: 0,
                gradientColors: [Color(0xFFFF4081), Color(0xFFF50057)],
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 06',
                isLocked: true,
              ),
            ),
            LevelRowWidget(
              leftLevel: LevelHexagonWidget(
                level: 'Level \n 07',
                isLocked: true,
              ),
              rightLevel: LevelHexagonWidget(
                level: 'Level \n 08',
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
