import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
    final Function answerQuestion;
  Answer(
    this.answerQuestion
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5),
      
      width: double.infinity,
      child: RaisedButton(onPressed: answerQuestion,color: Colors.cyan,elevation: 10,splashColor: Colors.deepPurple,
      child: Text('answer'),)
      ,
      
    );
  }
}