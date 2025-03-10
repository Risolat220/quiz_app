import 'package:flutter/material.dart';
import '../../screen/home_screen.dart';
import '../theme/dimens.dart';
import '../theme/colors.dart';
import '../theme/text_styles.dart';
import '../config/routes.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback function;

  const CustomButton({
    super.key,
    required this.text,
    required this.function,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        side: BorderSide(color: color, width: AppDimens.d2),
      ),
      onPressed: function,
      child: Center(child: Text(text, style: TextStyle(color: textColor))),
    );
  }
}

class QuizLevelButton extends StatelessWidget {
final String level;
final int levelIndex;
final VoidCallback onPressed;

const QuizLevelButton({
super.key,
required this.level,
required this.levelIndex,
required this.onPressed,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppDimens.levelButtonSpacing, horizontal: AppDimens.paddingMedium),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.white,
          side: const BorderSide(color: AppColors.white, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          minimumSize: const Size(double.infinity, 50),
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.quiz, arguments: levelIndex);
        },
        child: Text(level, style: AppTextStyles.level1),
      ),
    );
  }
}

IconButton arrowBackButton(BuildContext context) => IconButton(
  icon: Icon(Icons.arrow_back, color: AppColors.white),
  onPressed: () {
    Navigator. pushAndRemoveUntil<void>(
      context,
      MaterialPageRoute<void>(builder: (BuildContext context) =>  HomeScreen()),
      ModalRoute. withName('/'),
    );
  },
);


///circle 3 - pagedagi

class GreenCircle extends StatelessWidget {
  const GreenCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: ColoredBox(
        color: AppColors.green,
        child: SizedBox(width: AppDimens.d15, height: AppDimens.d15),
      ),
    );
  }
}

class RedCircle extends StatelessWidget {
  const RedCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: ColoredBox(
        color: AppColors.red,
        child: SizedBox(width: AppDimens.d15, height: AppDimens.d15),
      ),
    );
  }
}