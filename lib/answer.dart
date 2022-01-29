import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    SizedBox (height: 20,);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Color(0xFF2EEF0C),
        padding: EdgeInsets.all(20.0),
        textColor: Colors.white,
        child: Text(answerText, style: TextStyle(fontSize: 20)),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
