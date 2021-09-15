import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  Result(this._totalScore);

  String get resultPhrase {
    String resultText;
    if (_totalScore <= 8) {
      resultText = 'You are innocent';
    } else if (_totalScore <= 12) {
      resultText = 'You are innocent :)';
    } else if (_totalScore <= 16) {
      resultText = 'You are likeable!';
    } else if (_totalScore <= 20) {
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
        child: Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
