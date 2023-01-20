import 'dart:math';

import 'package:flutter/material.dart';
import './dice.dart';

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int rightDiceValue = 1;
  int leftDiceValue = 1;
  void randomValues(){
    setState((){
      rightDiceValue = Random().nextInt(6) + 1 ;
      leftDiceValue = Random().nextInt(6) + 1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Dice(number: leftDiceValue, onClick: randomValues),
          ),
          Expanded(
              child: Dice(number: rightDiceValue, onClick: randomValues),
          ),
        ],
      ),
    );
  }
}
