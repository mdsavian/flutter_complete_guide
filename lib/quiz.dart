import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Map<String, Object> currentQuestion;
  final VoidCallback answerQuestion;

  Quiz(this.currentQuestion, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(currentQuestion['questionText'] as String),
          ...(currentQuestion['answer'] as List<String>).map((answer) {
            return Answer(answerQuestion, answer);
          }).toList()
        ],
      ),
    );
  }
}
