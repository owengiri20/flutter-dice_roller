import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  var leftDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {print("left button got pressed");},
              child: Image.asset("./images/dice$leftDiceNumber.png"),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {print("owen");},
              child: Image.asset("./images/dice1.png"),
            ),
          )
        ],
      ),
    );
  }
}
