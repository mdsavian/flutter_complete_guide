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
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    const questions = [
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
        'answer': ['Jogn', 'Philip', 'Andrew', 'Mike']
      },
    ];
    final currentQuestion = questions[questionIndex];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First APP'),
            ),
            body: Column(
              children: [
                Question(currentQuestion['questionText'] as String),
                ...(currentQuestion['answer'] as List<String>).map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )));
  }
}
