import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {


    return SizedBox(
      height: 300 ,
      child: SingleChildScrollView (
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical : 9, horizontal: 12),
                  decoration: BoxDecoration(
                    color: data['answer'].toString() == data['user_answer'] ? const Color.fromARGB(255, 110, 185, 255) : const Color.fromARGB(255, 255, 35, 35),
                    borderRadius: const BorderRadius.all(Radius.circular(30))
                  ),
                  child: Text(((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    margin: const  EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data['question'] as String,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(data['user_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 170, 124, 255),
                            fontSize: 13,
                          ),
                  
                        ),
                        Text(data['answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 110, 185, 255),
                            fontSize: 13
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
