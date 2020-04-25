import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  final Function answerQuestions;
  final String answerNumber;

  Answer(this.answerQuestions,this.answerNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: RaisedButton(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10)
          ) ,
        color: Colors.blue,
        child: Text(answerNumber),
        onPressed: answerQuestions
        ),
      
    );
  }
}