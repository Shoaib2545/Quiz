import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz/model/quiz_model.dart';

class QuizHelper {
  QuizHelper({required this.catg});
  int catg;
  List<ApiModel> quiz = [];

  Future getQuiz() async {
    String? apiUrl =
        'https://opentdb.com/api.php?amount=10&category=$catg&difficulty=medium&type=multiple';
    try {
      var response = await http.get(Uri.parse(apiUrl));
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        data['results'].forEach((element) {
          ApiModel apiData = ApiModel(
              category: element['category'],
              question: element['question'],
              correct_answer: element['correct_answer'],
              incorrect_answers: element['incorrect_answers']);
          element['incorrect_answers'].add(element['correct_answer']);
          element['incorrect_answers'].shuffle();
          quiz.add(apiData);
        });
        return quiz;
      }
    } catch (e) {
      print(e);
    }
  }
}
