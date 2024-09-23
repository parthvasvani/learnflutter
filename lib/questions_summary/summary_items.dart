import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/questions_summary/question_identifier.dart';

class SummaryItems extends StatelessWidget {
  final Map<String, Object> dataItems;

  const SummaryItems({super.key, required this.dataItems});

  @override
  Widget build(BuildContext context) {
    final isRightAns = dataItems["answer"] == dataItems["user_answer"];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: dataItems["question_index"] as int,
              isRightAns: isRightAns),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dataItems["question"] as String,
                  style: GoogleFonts.notoSerif(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      textStyle: const TextStyle(
                          decoration: TextDecoration.underline)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  dataItems["user_answer"] as String,
                  style:
                      GoogleFonts.notoSerif(fontSize: 18, color: Colors.green),
                ),
                Text(
                  dataItems["answer"] as String,
                  style: GoogleFonts.notoSerif(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
