import 'package:flutter/material.dart';
import 'package:udemy_section2/data/questions.dart';
import 'package:udemy_section2/questions_screen.dart';
import 'package:udemy_section2/result_screen.dart';
import 'package:udemy_section2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selesctedAnswers = [];

  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selesctedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selesctedAnswers.add(answer);

    if (selesctedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selesctedAnswers,
        restart: restartQuiz,
      );
    }
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 124, 16, 143),
            body: Container(
              child: screenWidget,
            )));
  }
}
