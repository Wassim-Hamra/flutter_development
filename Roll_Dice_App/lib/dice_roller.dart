import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var activedice = "assets/images/dice-1.png";
  var dicenumber = 1;
  void rolldice() {
    setState(() {
      dicenumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(activedice = "assets/images/dice-$dicenumber.png",
              width: 200),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rolldice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          )
        ],
      ),
    );
  }
}
