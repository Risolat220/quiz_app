import 'package:flutter/material.dart';
import '../core/theme/colors.dart';
import '../core/theme/strings.dart';
import '../core/config/routes.dart';
import '../core/widgets/score_button.dart';
import 'package:just_audio/just_audio.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int total;
  final AudioPlayer _player = AudioPlayer();

  ScoreScreen({super.key, required this.score, required this.total}) {
    _playResultSound();
  }

  void _playResultSound() async {
    if (score >= total * 0.75) {
      _player.play();
    } else {
      _player.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    int wrong = total - score;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                // Back button
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Score",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor,
                          ),
                        ),
                        Text(
                          "$score",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Score Card
                Center(
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Icon(Icons.circle, color: Colors.green,
                                size: 14),
                            Text(
                              "$score",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                            const Text("Correct"),
                          ],
                        ),
                        Column(
                          children: [
                            const Icon(Icons.circle, color: Colors.red,
                                size: 14),
                            Text(
                              "$wrong",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            const Text("Wrong"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Buttons
                buildOutlinedButton(
                    AppStrings.playAgain, AppRoutes.quiz, context),
                const SizedBox(height: 15),
                buildOutlinedButton(AppStrings.home, AppRoutes.home, context),

                const Spacer(),

                // Bottom Bar
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "QUIZZLY",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



