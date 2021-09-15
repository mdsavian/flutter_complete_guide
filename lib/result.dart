import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are innocent';
    } else if (totalScore <= 12) {
      resultText = 'You are innocent :)';
    } else if (totalScore <= 16) {
      resultText = 'You are likeable!';
    } else if (totalScore <= 20) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are bad!!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            FlatButton(
              onPressed: resetQuiz,
              child: Text('Restart the Quiz'),
              textColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
