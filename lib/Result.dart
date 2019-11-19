import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final Function restartQuiz;
  final int score;
  Result({@required this.restartQuiz,this.score});

  String get resultPhrase{
    String phrase = "";
    if (score==30)
      phrase = "you'r the best";
    else if (score==20)
      phrase = "good game";
    else if (score==10)
      phrase = "you can do better";
          else
      phrase = "you failed";
          return phrase+" : $score/30";

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Center(
          child: Text("you finished the quiz", style: TextStyle
            (fontSize: 25)),
        ),
        Text(resultPhrase, style: TextStyle
          (fontSize: 25,fontWeight: FontWeight.bold)),
        Center(
            child: RaisedButton(
                child: Text("restart the quiz"),
                onPressed: restartQuiz))
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
