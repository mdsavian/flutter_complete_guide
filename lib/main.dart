import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    print(_questionIndex);
    print(_questions.length);
    print(_questionIndex < _questions.length);
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
            ? Column(
                children: [
                  Question(_currentQuestion['questionText'] as String),
                  ...(_currentQuestion['answer'] as List<String>).map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('Yeah you finish it!'),
              ),
      ),
    );
  }
}
