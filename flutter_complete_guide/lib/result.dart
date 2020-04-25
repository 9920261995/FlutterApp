import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;

  
  Result(this.reset);


  @override
  Widget build(BuildContext context) {
    return 
    Column(
            children: [
              Text("You did it"),
              RaisedButton(
                child: Text("RESET"),
                onPressed: reset
                )
          ],
      );
  }
}