import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  var leftDiceNumber = 1;

  var rightDiceNumber = 1;

  void changeDicee (){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              onPressed: changeDicee,
            ),
            ),
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
                ),
              onPressed: changeDicee,
            ),
            ),
        ],
      ),
    );
  }
}
