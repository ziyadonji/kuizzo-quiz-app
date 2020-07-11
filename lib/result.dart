import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);
  String text;
  String get resultText{
    if (score<=8){
     text='you are awesome and innocent';
    }else if(score<=14){
     text="you are likeable";
    }
    else if(score<=20){
      text='you are rude';
    }
    else{
      text='you are very very bad!!!';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(resultText,textAlign: TextAlign.center,style: TextStyle(color: Colors.black54,fontSize: 30,fontWeight: FontWeight.bold,),),);
  }
}