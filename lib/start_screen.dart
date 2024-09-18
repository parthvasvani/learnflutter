import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {

  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column
      ( mainAxisSize: MainAxisSize.min,
      children:   [
        Image.asset("assets/images/quiz-logo.png", color: Colors.lightBlue[500], width: 300,),
        const SizedBox(height: 20,),
         Text("Learn Flutter with Fun !", style: GoogleFonts.notoSerif(
           fontSize: 16),),
        const SizedBox(height: 20,),
        OutlinedButton.icon(onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 130, 14, 220),
            foregroundColor: Colors.amberAccent,
            textStyle:  const TextStyle(fontSize: 22,),
          ),
          label: const Text("Start Quiz"),
          icon: const Icon(Icons.arrow_right),
        )
      ],
    ));
  }
}
