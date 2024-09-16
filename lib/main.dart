import 'package:flutter/material.dart';
import 'package:practice_app/start_screen.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen(
          // colors: [
          //   Color.fromARGB(255, 136, 7, 14),
          //   Color.fromARGB(255, 221, 8, 19),
          // ],
        ),
      ),
    ),
  );
}
