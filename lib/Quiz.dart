import 'package:flutter/material.dart';
import 'package:practice_app/questions.dart';
import 'package:practice_app/result_screen.dart';
import 'package:practice_app/start_screen.dart';
import 'Question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAns = [];

  String activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAns(String ans) {
    selectedAns.add(ans);
    if (selectedAns.length == questions.length) {
      setState(() {
        //selectedAns = [];
        activeScreen = "result-screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAns = [];
      activeScreen = "start-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? sta;
    if (activeScreen == "start-screen") {
      sta = StartScreen(switchScreen);
    } else if (activeScreen == "result-screen") {
      sta = ResultScreen(
        chosenAns: selectedAns,
        restartQuiz: restartQuiz,
      );
    } else {
      sta = QuestionScreen(
        onSelectAnswer: chooseAns,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: sta,
      ),
    );
  }
}
