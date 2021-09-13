import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback handleAnswerQuestion;

  Answer(this.handleAnswerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          child: Text(answerText),
          color: Colors.blue,
          onPressed: handleAnswerQuestion),
    );
  }
}
