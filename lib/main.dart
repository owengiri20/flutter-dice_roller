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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice(String dice) {
    int rand = Random().nextInt(6) +1;
    setState((){
      if (dice == "left"){
        leftDiceNumber = rand;
      }else{
        rightDiceNumber = rand;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed:() => rollDice("left"),
              child: Image.asset("./images/dice$leftDiceNumber.png"),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () => rollDice("right"),
              child: Image.asset("./images/dice$rightDiceNumber.png"),
            ),
          )
        ],
      ),
    );
  }
}

