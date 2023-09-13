import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.pressed, {super.key});
  final String text;
  final void Function() pressed;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: pressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 30, 2, 86),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
    );
  }
}
