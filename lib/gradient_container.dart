
import 'package:flutter/material.dart';
import 'package:practice_app/style_text.dart';

import 'dice_roll.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //   colors: colors,
      //   begin: startAligment,
      //   end: endAligement,
      // )),
      child: const Center(child: RollDice()),
    );
  }
}
