import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final MapEntry<int, Map<String,Object>>  answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer.value['text'].toString()),
        onPressed: selectHandler,
        key: Key('answer' + answer.key.toString()),
      ),
    );
  }
}