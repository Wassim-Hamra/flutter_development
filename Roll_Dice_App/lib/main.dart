import 'package:flutter/material.dart';
import 'package:mobile_development/dice_roller.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
    body: Linear(Color.fromARGB(255, 37, 0, 248),
         Color.fromARGB(255, 137, 97, 237)),
  )));
}

class Linear extends StatelessWidget {
  const Linear(this.color1, this.color2, {super.key});
  final Color color1, color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft)),
        child: const DiceRoller());
  }
}
