import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';



class Quiz extends StatelessWidget {
  final List <Map<String,Object>>questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz( {@required this.questions, @required this.questionIndex,@required this.answerQuestion});



  @override
  Widget build(BuildContext context) {
    return Column(
          children:[
               Questions(
                 questions[questionIndex]["questionText"]
                 ),
                ...(questions[questionIndex]["answerText"] as List<String>).map((answers){
                  return Answer(answerQuestion, answers);
                }).toList()
          ],
      );
  }
}