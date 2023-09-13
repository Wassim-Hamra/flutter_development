import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Welcome extends StatelessWidget {
  Welcome(this.startquiz, {super.key});

  void Function() startquiz;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 90),
        Image.asset(
          "assets/images/quiz-logo.png",
          height: 280,
          color: const Color.fromARGB(200, 255, 255, 255),
        ),
        const SizedBox(height: 70),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
          onPressed: startquiz,
          label:
              const Text("Start Quiz", style: TextStyle(color: Colors.white)),
        )
      ],
    );
  }
}
