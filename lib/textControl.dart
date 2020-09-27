import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text('Press Me!'), color: Colors.amber, onPressed: changeText),
    );
  }
}
