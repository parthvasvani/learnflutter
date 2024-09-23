import 'package:flutter/material.dart';
import 'package:practice_app/option_button.dart';
import 'package:practice_app/questions.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String ans) onSelectAnswer;

  const QuestionScreen({super.key, required this.onSelectAnswer});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String ans) {
    widget.onSelectAnswer(ans);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQue = questions[currentQuestionIndex];
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQue.text,
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              /*OptionButton(words: "Option-1", onTop: () {  },),
            OptionButton(words: "Option-2", onTop: () {  },),
            OptionButton(words: "Option-3", onTop: () {  },),
            OptionButton(words: "Option-4", onTop: () {  },),*/
              ...currentQue.getShuffledOptions().map(
                    (ans) => OptionButton(
                      words: ans,
                      onTop: () {
                        answerQuestion(ans);
                        //print(ans);
                      },
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
