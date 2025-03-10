import 'package:flutter/material.dart';
import '../../screen/home_screen.dart';
import '../../screen/quiz_screen.dart';
import '../../screen/score_screen.dart';

sealed class AppRoutes{
  static const home = "/";
  static const quiz = "quiz";
  static const score = "score";

  static Map<String, Widget Function(BuildContext)> routes = {
    home: (context) =>  HomeScreen(),
    quiz: (context) {
      final args = ModalRoute.of(context)?.settings.arguments as int? ?? 1; // Default: Level 1
      return QuizScreen(level: args);
    },
    score: (context) {
      final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
      return ScoreScreen(
        score: args['score'] ?? 0,
        total: args['total'] ?? 10,
      );
    },
  };
}