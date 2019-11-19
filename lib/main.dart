import 'package:flutter/material.dart';

import './Quiz.dart';
import './Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  final _questions = [
    {
      'questionText': "Which of these is the largest country in North America?",
      'answers': [
        {'text': "United States", 'score': 10},
        {'text': "Germany ", 'score': 0},
        {'text': "Canada", 'score': 0}
      ]
    },
    {
      'questionText': "Where is China located?",
      'answers': [
        {'text': "Africa", 'score': 0},
        {'text': "Asia", 'score': 10},
        {'text': "America", 'score': 0},
      ]
    },
    {
      'questionText': "Which of these is not a language?",
      'answers': [
        {'text': "bolder", 'score': 10},
        {'text': "English", 'score': 0},
        {'text': "French", 'score': 0},
      ]
    },
  ];
  var nbPress = 0;
  var text = "pressed : 0 fois";

  void pressButton() {
    setState(() {
      nbPress = nbPress + 1;
      text = "pressed : $nbPress fois";
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                restartQuiz: _restartQuiz,
                score: _totalScore,
              ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: pressButton,
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
