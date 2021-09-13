import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    const questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First APP'),
            ),
            body: Column(
              children: [
                Question(questions[questionIndex]),
                RaisedButton(
                    child: Text('Answer 1'), onPressed: answerQuestion),
                RaisedButton(
                    child: Text('Answer 2'), onPressed: answerQuestion),
                RaisedButton(
                    child: Text('Answer 3'), onPressed: answerQuestion),
              ],
            )));
  }
}
