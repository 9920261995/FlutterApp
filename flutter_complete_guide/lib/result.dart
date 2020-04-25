import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int totalScore;

  
  Result(this.reset,this.totalScore);
 
  String get resultPhrase{
    var resultText = "You did it";
    if(totalScore == 40){
      resultText = "You know me Well";
    }
    else if(totalScore==30){
      resultText = "You know me ok";
    }
    else if(totalScore==20){
      resultText = "You don't know me ";
    }
    else if(totalScore==10){
      resultText = "You don't know me at all";
    }
    else{
      resultText = "You dont know me you Asshole";
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return 
    Column(
            children: [
              Text(resultPhrase,style: TextStyle(fontWeight:FontWeight.bold),),
              RaisedButton(
                child: Text("RESET"),
                onPressed: reset
                )
          ],
      );
  }
}