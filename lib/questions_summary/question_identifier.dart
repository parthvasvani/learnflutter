import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {

  final int questionIndex;
  final bool isRightAns;

  const QuestionIdentifier({super.key, required this.questionIndex, required this.isRightAns});

  @override
  Widget build(BuildContext context) {
    final questionNo = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isRightAns ? Colors.blueAccent : Colors.redAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text(
        questionNo.toString(),
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
