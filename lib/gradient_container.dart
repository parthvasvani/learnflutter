
import 'package:flutter/material.dart';
import 'package:practice_app/style_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
          )),
      child: const Center(
        child: StyleText("PARTH"),
      ),
    );
  }
}
