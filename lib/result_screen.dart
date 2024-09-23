import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/questions_summary/question_summary.dart';
import 'package:practice_app/questions.dart';

class ResultScreen extends StatelessWidget {

  final List<String> chosenAns;

  final void Function() restartQuiz;

  const ResultScreen({super.key, required this.chosenAns,  required this.restartQuiz});


  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];

    for(int i = 0; i < chosenAns.length; i++){
      summary.add({
        "question_index" : i,
        "question" : questions[i].text,
        "answer" : questions[i].option[0],
        "user_answer" : chosenAns[i],

      });
    }
    return summary;

  }

  @override
  Widget build(BuildContext context) {
    var summaryData = getSummaryData();
    var noTotalQuestion = questions.length;
    var noAnsQuestion = summaryData.where((element){
      return element["answer"] == element["user_answer"];
    }).length;
    print(noAnsQuestion);
    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your answered $noAnsQuestion out of $noTotalQuestion questions correctly!", style: GoogleFonts.notoSerif(
              fontSize: 20,
            ),textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            QuestionSummary(summaryAns: getSummaryData()),
            const SizedBox(height: 30,),
            OutlinedButton( onPressed: restartQuiz,
                child:  Text("Restart Quiz", style: GoogleFonts.notoSerif(
                  fontSize: 20,
                  color: Colors.black,

                ),))
          ],
        ),
      ),
    );
  }
}
