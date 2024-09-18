import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {

  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column
      ( mainAxisSize: MainAxisSize.min,
      children:   [
        Image.asset("assets/images/quiz-logo.png", color: Colors.grey[500], width: 300,),
        const SizedBox(height: 20,),
        const Text("Learn Flutter with Fun !", style: TextStyle(fontSize: 20),),
        const SizedBox(height: 20,),
        OutlinedButton.icon(onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 81, 255),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20),
          ),
          label: const Text("Start Quiz"),
          icon: const Icon(Icons.arrow_right),
        )
      ],
    ));
  }
}
