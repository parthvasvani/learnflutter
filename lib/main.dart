import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 136, 7, 14),
            Color.fromARGB(255, 221, 8, 19),
          ],
        ),
      ),
    ),
  );
}
