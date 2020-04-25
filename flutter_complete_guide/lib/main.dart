import 'package:flutter/material.dart';
import 'answer.dart';
import './question.dart';


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
        body: _questionIndex < questions.length ? Column(
          children:[
               Questions(
                 questions[_questionIndex]["questionText"]
                 ),
                ...(questions[_questionIndex]["answerText"] as List<String>).map((answers){
                  return Answer(answerQuestion, answers);
                }).toList()
          ],
          ):
          Column(
            children: [
              Text("You did it"),
              RaisedButton(
                child: Text("RESET"),
                onPressed: reset
                )
          ],
          )
      )
      );
  }
}


