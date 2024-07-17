import 'package:flutter/material.dart';

class QuizContainer extends StatelessWidget {
  const QuizContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.purple[300]),
        child: const Center(child: QuizSubContainer(),) 
    );
  }
}

class QuizSubContainer extends StatelessWidget {

  const QuizSubContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: -20),
      children: [
        Image.asset('assets/images/quiz-logo.png'),
        TextButton(onPressed: onPressed, child: const Text('quiz start')),
      ],
    );
  }

  void onPressed() {}
}
