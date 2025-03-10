import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final List<int> options;
  final Function(int) onAnswerSelected;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.options,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question, style: TextStyle(fontSize: 24)),
        ...options.map((option) => ElevatedButton(
          onPressed: () => onAnswerSelected(option),
          child: Text(option.toString()),
        )),
      ],
    );
  }
}

