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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage("./images/dice1.png"),
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Expanded(
            child: Image(
              image: AssetImage("./images/dice1.png"),
            ),
          )
        ],
      ),
    );
  }
}
