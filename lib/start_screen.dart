import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 230,
            color: const Color.fromARGB(151, 255, 255, 255),
          ),
        ),
        const Text(
          'Learn Flutter the fun way !',
          style: TextStyle(fontSize: 23, color: Colors.white),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          label:
              const Text('Start Quiz', style: TextStyle(color: Colors.white)),
        ),
      ],
    ));
  }
}
