import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What is your favorite color?',
      'answer': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Red', 'score': 6},
        {'text': 'Yellow', 'score': 12}
      ]
    },
    {
      'questionText': 'What is your favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 5},
        {'text': 'Lion', 'score': 15},
        {'text': 'Elephant', 'score': 25},
      ]
    },
    {
      'questionText': 'What is your favorite friend?',
      'answer': [
        {'text': 'John', 'score': 5},
        {'text': 'Philip', 'score': 9},
        {'text': 'Andrew', 'score': 7},
        {'text': 'Mike', 'score': 6}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
      _totalScore += score;
    });
  }

  Widget build(BuildContext context) {
    var _currentQuestion = _questions[0];

    if (_questionIndex < _questions.length)
      _currentQuestion = _questions[_questionIndex];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First APP'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_currentQuestion, _answerQuestion)
            : Result(_totalScore),
      ),
    );
  }
}
