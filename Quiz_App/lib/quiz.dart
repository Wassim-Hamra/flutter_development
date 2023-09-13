import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/result_screen.dart';

class Base extends StatefulWidget {
  @override
  State<Base> createState() {
    return _BaseState();
  }
}

class _BaseState extends State<Base> {
  Widget? activeScreen;
  List<String> selectedAnswers = [];

  void initState() {
    super.initState();
    activeScreen = Welcome(switchscreen);
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(choosenAnswers: selectedAnswers);
      });
    }
  }

  void switchscreen() {
    setState(() {
      activeScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 126, 103, 237),
            Color.fromARGB(255, 51, 41, 137)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
