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
 

  void answerQuestion(){

    
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
    });
  }

  var questions = [
      {"questionText": "What's your favourite colour?",
      "answerText":["Black","White","Blue","Yellow"]
      },
      {"questionText": "What's your favourite Animal?",
       "answerText":["Lion","Tiger","Dog","cat"]
      },
      {"questionText": "What's your favourite food?",
       "answerText":["Idli","Pav Bhaji","Medu Vada","chinese"]
       },
      {"questionText": "What's your favourite show?",
      "answerText":["Breaking Bad","Money Heist","Naruto","Death Note"]
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
        Result(reset)
         
      )
      );
  }
}


