import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/quiz-logo.png',
          width: 300,
          height: 300,
          color: const Color.fromARGB(129, 105, 14, 128),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Welcome to my Quiz App',
          style:
              TextStyle(color: Color.fromARGB(255, 124, 41, 231), fontSize: 12),
        ),
         OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
      ],
    );
  }
}
