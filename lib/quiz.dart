import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
   final int _index;
   final List<Map<String, Object>> _questions;
 
   final Function _answerQuestion;

   Quiz(this._index,this._answerQuestion,this._questions);


  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,50,0,0),
                  child: Question(_questions[_index]["questionText"],),
                ),
                SizedBox(height:30),
                ...(_questions[_index]["answer"]as List).map((element){
                  return  Answer(element,_answerQuestion);

                }).toList(),
                
              ],
            );
  }
}