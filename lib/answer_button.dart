import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    this.answerText,
    this.onTap, 
    {super.key}
  );

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        maximumSize: const Size.fromWidth(100),
        padding: const  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}