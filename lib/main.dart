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

   var questions=[
    {
      "questionText":'what is your favourite color',
      "answer":['red','blue','green','orange']

    },
    {
        "questionText":'what is your favourite animal',
         "answer":['lion','tiger','elephant','goat']
    },
    {
          "questionText":'what is your favourite singer',
          "answer":['arman','arijit','atif','zayn']
          

    },
    {
            "questionText":"what is your favorite person",
            "answer":['ziyad','onji','ziyad','onji']
    },
    
    
    ];

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
        
        appBar: AppBar(title: Text('Kuizzo',),
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
                  child: Question(questions[_index]["questionText"],),
                ),
                SizedBox(height:30),
                ...(questions[_index]["answer"]as List).map((element){
                  return  Answer(element,_answerQuestion);

                }).toList(),
                
              ],
            ),
          
        ],),
      ),
    );
  }
}
