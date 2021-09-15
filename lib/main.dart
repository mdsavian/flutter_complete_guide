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
      'answer': ['Blue', 'Green', 'Red', 'Yellow']
    },
    {
      'questionText': 'What is your favorite animal?',
      'answer': ['Dog', 'Cat', 'Lion', 'Elephant']
    },
    {
      'questionText': 'What is your favorite friend?',
      'answer': ['John', 'Philip', 'Andrew', 'Mike']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
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
            : Result(),
      ),
    );
  }
}
