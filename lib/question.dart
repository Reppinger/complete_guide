import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final String textKey;

  Question(this.questionText, this.textKey);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
          key: Key(textKey),
        ));
  }
}
