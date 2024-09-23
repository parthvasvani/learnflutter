import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/questions_summary/summary_items.dart';

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
              return SummaryItems(dataItems: data);
            },).toList(),
        ),
      ),
    );
  }
}
