import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDeiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[400],
          title: Text('Dice'),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: FlatButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            setState(() {
                              changeDiceFace();
                            });
                          },
                          child:
                              Image.asset('images/dice$leftDiceNumber.png')))),
              Container(
                child: Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
                    },
                    child: Image(
                      image: AssetImage('images/dice$rightDeiceNumber.png'),
                    ),
                  ),
                )),
              )
            ],
          ),
        ));
  }

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDeiceNumber = Random().nextInt(6) + 1;
  }
}
