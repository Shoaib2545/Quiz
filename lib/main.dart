import 'package:flutter/material.dart';
import 'package:quiz/pages/home.dart';
import 'package:quiz/pages/quiz_page.dart';
import 'package:quiz/pages/result.dart';
import 'package:quiz/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
