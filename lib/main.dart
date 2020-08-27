import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
            key: Key('AppBar'),
          ),
          body: Column(
            children: [
              Text(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
                key: Key('Answer1'),
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: answerQuestion,
                key: Key('Answer2'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: answerQuestion,
                key: Key('Answer3'),
              ),
            ],
          )),
    );
  }
}
