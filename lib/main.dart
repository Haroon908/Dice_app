import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body:  DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LeftDiceNumber = 5;
  int RightDiceNumber = 1;

  void ChangeDiceFace(){
    setState(() {
      RightDiceNumber = Random().nextInt(6)+1;
      LeftDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(

                onPressed: () {
                 ChangeDiceFace();
                },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  ChangeDiceFace();

                },
                child: Image.asset('images/dice$RightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}
