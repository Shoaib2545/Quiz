import 'package:flutter/material.dart';
import 'package:quiz/pages/home.dart';
import 'package:quiz/pages/over_result.dart';

class ResultPage extends StatelessWidget {
  List questionAnswer = [];
  List studentAnswer = [];
  var total;
  var result;
  ResultPage(
      {Key? key,
      required this.total,
      required this.result,
      required this.studentAnswer,
      required this.questionAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Result',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'You got $result out of $total',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FinalResult(
                              questionAnswer: questionAnswer,
                              studentAnswer: studentAnswer,
                            )));
              },
              child: const Text(
                'View Result',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text(
                'Go back to home page',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
