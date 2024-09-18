import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryAns;

  const QuestionSummary({super.key, required this.summaryAns});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryAns.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: data["ans"] == data["user_answer"] ? Colors.white : Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: Text(((data["question_index"] as int) + 1).toString(), style: TextStyle(fontSize: 18,
                        color: data["ans"] == data["user_answer"] ? Colors.black : Colors.white,
                      ),)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String, style: GoogleFonts.notoSerif(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              textStyle: const TextStyle(decoration: TextDecoration.underline)),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          data["user_answer"] as String, style: GoogleFonts.notoSerif(
                              fontSize: 18,
                              color: Colors.red),
                        ),
                        Text(
                          data["answer"] as String, style: GoogleFonts.notoSerif(
                              fontSize: 18,
                              color: Colors.deepPurple),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
