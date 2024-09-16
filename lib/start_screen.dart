import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column
      ( mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/flutter5786.jpg", width: 300,),
        SizedBox(height: 20,),
        Text("Learn Flutter in fun way!?", style: TextStyle(fontSize: 30),),
        SizedBox(height: 20,),
        OutlinedButton(onPressed: () {
          print("Start....");

        },
            style: OutlinedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 70, 34, 175),
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 20),
            ),
            child: Text("Start Quiz"))
      ],
    ));
  }
}
