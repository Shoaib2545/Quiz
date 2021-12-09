import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget {
  List questionAnswer = [];
  List studentAnswer = [];
  FinalResult(
      {Key? key, required this.questionAnswer, required this.studentAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(questionAnswer.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Q${index + 1}: ${questionAnswer[index].question}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Correct answer: ${questionAnswer[index].correct_answer}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Your answer: ${studentAnswer[index]}',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 16,
                    )
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
