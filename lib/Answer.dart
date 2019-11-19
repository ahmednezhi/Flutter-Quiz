import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answer="test";
  final Function selectHandler;

  Answer(this.selectHandler, this.answer);

  void answerQuestion() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answer),
        color: Colors.red,
        elevation: 4,
        onPressed: selectHandler,
        textColor: Colors.white,
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15),
    );
  }
}
