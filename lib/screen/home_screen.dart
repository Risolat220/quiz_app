import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import '../core/theme/colors.dart';
import '../core/theme/text_styles.dart';
import '../core/theme/strings.dart';
import '../core/theme/dimens.dart';
import '../core/widgets/quiz_button.dart';

class HomeScreen extends StatelessWidget {
  final AudioPlayer _player = AudioPlayer();

  HomeScreen({super.key});

  void _playSound() async {
  _player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/image1.png",
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: AppDimens.paddingLarge),
              Image.asset(
                'assets/images/QUIZZLY.png',
                width: 300,
              ),
              const SizedBox(height: AppDimens.paddingMedium),
              const Text(AppStrings.welcome, style: AppTextStyles.welcome),
              const SizedBox(height: AppDimens.paddingMedium),
              const Text(
                AppStrings.introduce,
                style: AppTextStyles.introduce,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppDimens.paddingMedium),
              const Text(AppStrings.choose, style: AppTextStyles.choose),
              const SizedBox(height: AppDimens.paddingMedium),
              _buildQuizLevelButtons(),
              const SizedBox(height: AppDimens.paddingLarge),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuizLevelButtons() {
    return Column(
      children: [
        QuizLevelButton(level: 'Level 1', levelIndex: 1, onPressed: _playSound),
        QuizLevelButton(level: 'Level 2', levelIndex: 2, onPressed: _playSound),
        QuizLevelButton(level: 'Level 3', levelIndex: 3, onPressed: _playSound),
      ],
    );
  }
}


