import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summary});
  final List<Map<String, Object>> summary;
  @override

  Color? returnColor(String correct, String user){
    if(correct == user){
    return Colors.lightBlue;
    }
    else{
    return Colors.purpleAccent;
    }
  }


  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((data) {
            return Container(
              width: double.infinity,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 4),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: returnColor(data["correct_answer"].toString(),data["user_answer"].toString())),
                      
                      child: Center(
                        child: 
                          Text(
                            ((data["index"] as int) + 1).toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: 
                            Colors.white,
                            fontWeight: FontWeight.bold),
                          ),
                        
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data["question"].toString(),
                            style:
                                const TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data["user_answer"].toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 231, 105, 235),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data["correct_answer"].toString(),
                            style: const TextStyle(
                              color: Color.fromARGB(255, 131, 173, 237),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
