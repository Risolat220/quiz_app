
import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/strings.dart';
import '../theme/colors.dart';

class CircleNested extends StatelessWidget {
  final List<int> listScore;
  const CircleNested({super.key, required this.listScore});

  @override
  Widget build(BuildContext context) {
    List<int> listScore = [5, 5]; // [wrong, correct]

    int wrong = listScore[0];
    int correct = listScore[1];
    int sum = wrong + correct;

    int sum3 = ((correct / sum) * 100).round();

    ///matija
    return Align(
      alignment: Alignment(0, -1),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(26)),
        child: SizedBox(
          width: 411,
          height: 300,
          child: ColoredBox(
            color: AppColors.mainColor,
            child: Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      shape: CircleBorder(),
                      color: Colors.purple.shade300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 105,
                          height: 105,
                          child: Card(
                            shape: CircleBorder(),
                            color: Colors.purple.shade200,
                            child: Padding(
                              padding: const EdgeInsets.all(6.5),
                              child: Padding(
                                padding: const EdgeInsets.all(5.4),
                                child: SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Card(
                                    shape: CircleBorder(),
                                    color: Colors.purple.shade100,
                                    child: SizedBox(
                                      width: 60,
                                      height: 60,
                                      child: Card(
                                        shape: CircleBorder(),
                                        color: Colors.purple.shade100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: Card(
                                              shape: CircleBorder(),
                                              color: AppColors.white,
                                              child: Center(
                                                child: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Text(
                                                      AppStrings.yourScore,
                                                      style: TextStyle(
                                                        color:
                                                        AppColors.textColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      "$sum3",
                                                      style: TextStyle(
                                                        color:
                                                        AppColors.mainColor,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
