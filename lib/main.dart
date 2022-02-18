// ignore_for_file: deprecated_member_use
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(
            child: Text('DICE WORLD'),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return DicePageState();
  }
}

class DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void DiceNumbers() {
    LeftDiceNumber = Random().nextInt(6) + 1;
    RightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                //takes user action by changing the dice each time it is pressed
                DiceNumbers();
              });
            },
            child: Image.asset('images/dice$LeftDiceNumber.jpg'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  //takes user action by changing the dice each time it is pressed
                  DiceNumbers();
                });
              },
              child: Image.asset('images/dice$RightDiceNumber.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
