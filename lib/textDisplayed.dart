import 'package:flutter/material.dart';

import 'textControl.dart';

class TextDisplayed extends StatelessWidget {
  final List<String> displayedText;
  final int textIndex;
  final Function changeText;

  TextDisplayed(this.displayedText, this.textIndex, this.changeText);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(25),
          child: Text(
            displayedText[textIndex],
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        TextControl(changeText)
      ],
    );
  }
}
