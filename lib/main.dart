// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import 'text_displayed.dart';

void main() => runApp(Assignment());

class Assignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AssignmentState();
  }
}

class _AssignmentState extends State<Assignment> {
  final _textList = [
    'This is an assignment...',
    'and this text was written by the creator so...',
    'it\'s done! Have a good day'
  ];

  var _textIndex = 0;

  void _changeText() {
    setState(() {
      _textIndex += 1;
    });

    print(_textIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('First Assignment'),
            ),
            body: Center(
                child: _textIndex < _textList.length
                    ? (TextDisplayed(_textList, _textIndex, _changeText))
                    : Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(50),
                        child: Text(
                          'We have no more stuff to show you. Sorry.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.amberAccent,
                              backgroundColor: Colors.black,
                              fontFamily: 'Arial',
                              fontSize: 40),
                        ),
                      ))));
  }
}
