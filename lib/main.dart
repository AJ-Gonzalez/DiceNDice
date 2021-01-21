import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

import 'dart:math';
import 'dart:ui';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Center(
            child: Text('DiceNDice',
                style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontFamily: 'PottaOne',
            ),
            ),
          ),
          backgroundColor: Colors.deepPurple.shade300,
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
  int d4 = 4;
  int d6 = 6;
  int d8 = 8;
  int d10 = 10;
  int d12 = 12;
  int d20 = 20;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'D4                D6',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontFamily: 'PottaOne',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d4 = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d4.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d6 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d6.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'D8               D10',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontFamily: 'PottaOne',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d8 = Random().nextInt(8) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d8.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d10 = Random().nextInt(10) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d10.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              'D12              D20',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontFamily: 'PottaOne',
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d12 = Random().nextInt(12) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d12.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      d20 = Random().nextInt(20) + 1;
                    });
                  },
                  child: Image.asset('images/dice$d20.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
