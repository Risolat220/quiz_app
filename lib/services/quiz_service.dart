import 'dart:math';

class QuizService {
  static List<Map<String, dynamic>> generateQuestions(int level) {
    List<Map<String, dynamic>> generatedQuestions = [];
    Random random = Random();

    for (int i = 0; i < 10; i++) {
      int a, b, answer;
      String question;
      List<int> options;

      if (level == 1) {
        a = random.nextInt(9) + 1;
        b = random.nextInt(9) + 1;
        bool isAddition = random.nextBool();

        if (!isAddition && a < b) {
          int temp = a;
          a = b;
          b = temp;
        }

        question = isAddition ? "$a + $b = ?" : "$a - $b = ?";
        answer = isAddition ? a + b : a - b;

      } else if (level == 2) {
        a = random.nextInt(9) + 1;
        b = random.nextInt(9) + 1;
        bool isMultiplication = random.nextBool();

        if (isMultiplication) {
          question = "$a × $b = ?";
          answer = a * b;
        } else {
          answer = random.nextInt(9) + 1;
          b = random.nextInt(9) + 1;
          a = answer * b;
          question = "$a ÷ $b = ?";
        }

      } else {
        a = random.nextInt(19) + 1;
        b = random.nextInt(19) + 1;
        List<String> operations = ['+', '-', '×', '÷'];
        String operation = operations[random.nextInt(4)];

        switch (operation) {
          case '+':
            question = "$a + $b = ?";
            answer = a + b;
            break;
          case '-':
            if (a < b) {
              int temp = a;
              a = b;
              b = temp;
            }
            question = "$a - $b = ?";
            answer = a - b;
            break;
          case '×':
            question = "$a × $b = ?";
            answer = a * b;
            break;
          default:
            answer = random.nextInt(19) + 1;
            b = random.nextInt(19) + 1;
            a = answer * b;
            question = "$a ÷ $b = ?";
        }
      }

      options = [answer, answer + 1, max(answer - 1, 1), answer + 2];
      options.shuffle();
      generatedQuestions.add({'question': question, 'options': options, 'answer': answer});
    }
    return generatedQuestions;
  }
}
