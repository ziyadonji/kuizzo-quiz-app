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
      "answer": [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 8},
        {'text': 'green', 'score': 4},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      "questionText": 'what is your favourite animal',
      "answer": [
        {'text': 'snake', 'score': 10},
        {'text': 'tiger', 'score': 7},
        {'text': 'dog', 'score': 3},
        {'text': 'cat', 'score': 2}
      ]
    },
    {
      "questionText": 'what is your favourite game',
      "answer": [
        {'text': 'PUBG', 'score': 10},
        {'text': "mini militia", 'score': 9},
        {'text': 'ludo', 'score': 4},
        {'text': 'racing', 'score': 1}
      ]
    },
    {
      "questionText": "what is your favorite drink",
      "answer": [
        {'text': 'vodka', 'score': 10},
        {'text': 'carbonated drinks', 'score': 8},
        {'text': 'shake', 'score': 5},
        {'text': 'water', 'score': 1}
      ]
    },
    {
      "questionText": "what is your favorite person",
      "answer": [
        {'text': 'ziyad', 'score': 1},
        {'text': 'onji', 'score': 1},
        {'text': 'ziyad', 'score': 1},
        {'text': 'onji', 'score': 1}
      ]
    },
  ];
  var _totalScore =0;
  void _reset(){
    setState(() {
      _totalScore=0;
      _index=0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore+=score;
      _index += 1;
    });
    print(_totalScore);

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
                : Result(_totalScore,_reset),
          ],
        ),
      ),
    );
  }
}
