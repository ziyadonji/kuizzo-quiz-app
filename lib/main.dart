import 'package:flutter/material.dart';
import 'package:kuizzo/result.dart';
import "./quiz.dart";
import './image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  var _questions = [
    {
      "questionText": 'what is your favourite color',
      "answer": ['red', 'blue', 'green', 'orange']
    },
    {
      "questionText": 'what is your favourite animal',
      "answer": ['lion', 'tiger', 'elephant', 'goat']
    },
    {
      "questionText": 'what is your favourite singer',
      "answer": ['arman', 'arijit', 'atif', 'zayn']
    },
    {
      "questionText": "what is your favorite person",
      "answer": ['ziyad', 'onji', 'ziyad', 'onji']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _index += 1;
    });

    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kuizzo',
          ),
          backgroundColor: Colors.cyan[600],
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Images(),
            _index < _questions.length
                ? Quiz(_index, _answerQuestion, _questions)
                : Result(),
          ],
        ),
      ),
    );
  }
}
