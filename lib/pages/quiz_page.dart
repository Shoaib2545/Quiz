import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/helper/api_helper.dart';
import 'package:quiz/pages/result.dart';

class Quiz extends StatefulWidget {
  final int catg;
  const Quiz({Key? key, required this.catg}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool getQ = true;
  List quiz = [];
  List studentAnswer = [];
  int result = 0;
  int currentQuestionIndex = 0;
  int totalSeconds = 30;
  Timer? timer;

  getQuiz() async {
    QuizHelper quizHelper = QuizHelper(catg: widget.catg);
    await quizHelper.getQuiz();
    quiz = quizHelper.quiz;
    setState(() {
      getQ = false;
    });
    initTimer();
  }

  initTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (totalSeconds == 0) {
        print('Completed');
        setState(() {
          totalSeconds = 30;
          if (currentQuestionIndex != quiz.length - 1) {
            currentQuestionIndex++;
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          total: quiz.length,
                          result: result,
                          studentAnswer: studentAnswer,
                          questionAnswer: quiz,
                        )));
          }
        });
      } else {
        setState(() {
          totalSeconds--;
        });
      }
    });
  }

  checkAnswer(answer) {
    studentAnswer.add(answer);
    if (quiz[currentQuestionIndex].correct_answer == answer) {
      print('true');
      result++;
    }
    setState(() {
      if (currentQuestionIndex != quiz.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => ResultPage(
                      total: quiz.length,
                      result: result,
                      studentAnswer: studentAnswer,
                      questionAnswer: quiz,
                    )));
      }
      totalSeconds = 30;
    });
  }

  @override
  void initState() {
    super.initState();
    getQuiz();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getQ
          ? Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                                '${quiz[currentQuestionIndex].category}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ),
                          Expanded(
                            child: Text(
                              'Time Remaining: ${totalSeconds}s',
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Q: ${quiz[currentQuestionIndex].question}',
                        textAlign: TextAlign.start,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ...List.generate(
                        quiz[currentQuestionIndex].incorrect_answers.length,
                        (index) {
                      return Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              checkAnswer(quiz[currentQuestionIndex]
                                  .incorrect_answers[index]);
                            },
                            child: Text(
                                '${index + 1}: ${quiz[currentQuestionIndex].incorrect_answers[index]}',
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ),
    );
  }
}
