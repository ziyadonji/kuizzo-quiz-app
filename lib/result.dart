import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function result;

  Result(this.score, this.result);
  String text;
  String get resultText {
    if (score <= 15) {
      text = 'you are awesome and innocent';
    } else if (score <= 20) {
      text = "you are likeable";
    } else if (score <= 30) {
      text = 'you are rude';
    } else {
      text = 'you are very very bad!!!';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 20),
        FlatButton.icon(
          color: Colors.cyan[500],
            onPressed: result,
            icon: Icon(Icons.restore,),
            label: Text("Reset quiz"))
      ],
    );
  }
}
