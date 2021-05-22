import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

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
  final questions = const [
    {
      'questionText': 'What\'s your favourite colour?',
      'answer': ['Black', 'Pink', 'Blue', 'Red']
    },
    {
      'questionText': 'Which\'s the worst year of your life?',
      'answer': ['1999', '2021', '2020', '2017']
    },
  ];
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length
            ? Column(children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
