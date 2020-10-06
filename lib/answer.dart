import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue[700],
          child: Text(
            answerText,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          onPressed: selectHandler),
    );
  }
}
