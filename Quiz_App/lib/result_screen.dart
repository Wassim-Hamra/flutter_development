import 'package:quiz_app/main.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/welcome_screen.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;
  final numtotalquestions = questions.length;

  List<Map<String, Object>> get summarydata {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < choosenAnswers.length; i++) {
      summary.add(
        {
          "index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": choosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final numcorrectquestions = summarydata.where((element) {
      return element["correct_answer"] == element["user_answer"];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "You answered $numcorrectquestions out of $numtotalquestions questions correctly !",
                style: const TextStyle(
                    color: Color.fromARGB(255, 197, 110, 240),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summary: summarydata),
              const SizedBox(
                height: 30,
              ),
              const TextButton(
                  onPressed: main,
                  child: Text("Restart Quiz"))
            ]),
      ),
    );
  }
}
