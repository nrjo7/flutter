import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answer': [{'text':'Black', 'score':10},{'text':'White','score':1}, {'text':'Green','score':3}, {'text': 'Red','score':7}]
    },
    {
      'questionText': 'What\'s your favorite animal?',
       'answer': [{'text':'Snake', 'score':10},{'text':'Dog','score':1}, {'text':'Cat','score':3}, {'text': 'Bat','score':7}]
    },
    {'questionText': 'Who\'s your role model?',
     'answer': [{'text':'Neeraj R', 'score':10},{'text':'Gandi','score':1}, {'text':'Rahna A R','score':3}, {'text': 'Hitler','score':7}]}
  ];
  int _questionIndex = 0;
  int _totalScore=0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore+=score;
    print(_totalScore);

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("You got another question");
    } else {
      print('No more questions');
    }
  }

  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion:_answerQuestion,
                questions: _questions)
            : Result(_totalScore)
      ),
    );
  }
}
