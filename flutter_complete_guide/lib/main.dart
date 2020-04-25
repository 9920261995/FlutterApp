import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';



void main()=> runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  
  var _questionIndex = 0;
  var totalScore = 0;
 
  void answerQuestion(score){


    totalScore += score; 
    print(totalScore);

    setState(() {
    _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if ( _questionIndex < questions.length){
      print("We have more questions");
    }
    
  }

  void reset(){
    
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  var questions = [
      {"questionText": "What's your favourite colour?",
      "answerText":[
        {"text":"Black","score":10},
        {"text":"Blue","score":0},
        {"text":"Yellow","score":0},
        {"text":"Magenta","score":0}
        ]
        
      },
      {"questionText": "What's your favourite Animal?",
       "answerText":[
         {"text":"Lion","score":0},
         {"text":"Tiger","score":0},
         {"text":"Dog","score":0},
         {"text":"cat","score":10}
         ]
        
        
      },
      {"questionText": "What's your favourite food?",
       "answerText":[
        {"text": "Idli","score":0},
        {"text":"Pav Bhaji","score":0},
        {"text":"Medu Vada","score":0},
        {"text":"chinese","score":10},
        ]
        
       
       },
      {"questionText": "What's your favourite show?",
      "answerText":[
        {"text":"Breaking Bad","score":0},
        {"text":"Money Heist","score":0},
        {"text": "Naruto","score":10},
        {"text":"Death Note","score":0}]
        
      }
    ]; 

  @override
  Widget build(BuildContext context) {
    
   
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title: Text(
            "hello"
            ),
        ) ,
        body: _questionIndex < questions.length ?
        Quiz(
          questions:questions,
          questionIndex:_questionIndex,
          answerQuestion:answerQuestion
          ) 
          :
        Result(reset,totalScore)
         
      )
      );
  }
}


