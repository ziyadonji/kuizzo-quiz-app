import 'package:flutter/material.dart';
import 'package:kuizzo/Question.dart';
import 'package:kuizzo/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index=0;

  var questions=['what is your favourite color','what is your favourite animal','what is your favourite singer'];

  void _answerQuestion(){
    setState(() {
      _index+=1;
    });
    
    print(_index);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(title: Text('Kuizzo'),
        backgroundColor: Colors.cyan[600],
        centerTitle: true,),
        body: Stack(children: <Widget>[
          Container(height: double.infinity,
          width: double.infinity,
            child: Image(image: AssetImage("assets/kuizzo.jpg"),
            fit: BoxFit.fill,),
          ),
           Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,50,0,0),
                  child: Question(questions[_index],),
                ),
                SizedBox(height:30),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
                Answer(_answerQuestion),
              ],
            ),
          
        ],),
      ),
    );
  }
}
