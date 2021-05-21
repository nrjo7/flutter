import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
@override
State<StatefulWidget> createState(){
 return _MyAppState();
}
}

class _MyAppState extends State<MyApp>{
  int _questionIndex=0;
  void _answerQuestion() {
    setState((){
      _questionIndex ++;
    });
  
    print(_questionIndex);
  }

  @override
  build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour?',
      'Who\'s your favourite person'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          
        ]),
      ),
    );
  }
}
