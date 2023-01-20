import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final int number;
  final void Function() onClick;
  const Dice({Key? key, required this.number, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onClick,
        child: Image.asset("images/dice$number.png"),
    );
  }
}
