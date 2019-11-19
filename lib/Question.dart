import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      height: 45,
      margin: EdgeInsets.all(15), // EdgeInsets.all(15) margin for all
      // corners, EdgeInsets.only(15) to specify wich side
    );
  }
}
