import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  // var activeDice1 = "assets/images/dice/dice-1.png";
  // var activeDice2 = "assets/images/dice/dice-2.png";
  // var activeDice3 = "assets/images/dice/dice-3.png";
  // var activeDice4 = "assets/images/dice/dice-4.png";
  // var activeDice5 = "assets/images/dice/dice-5.png";
  // var activeDice6 = "assets/images/dice/dice-6.png";
  var activeDice = "assets/images/Dice-2.jpeg";

  void rollDice() {
    var diceNo = Random().nextInt(6) + 1;

    setState(() {
      // print(diceNo);
      activeDice = "assets/images/Dice-$diceNo.jpeg";
      // switch (diceNo) {
      //   case 1:
      //     activeDice = activeDice1;
      //     break;
      //   case 2:
      //     activeDice = activeDice2;
      //     break;
      //   case 3:
      //     activeDice = activeDice3;
      //     break;
      //   case 4:
      //     activeDice = activeDice4;
      //     break;
      //   case 5:
      //     activeDice = activeDice5;
      //     break;
      //   case 6:
      //     activeDice = activeDice6;
      //     break;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 100,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                backgroundColor: Color.fromARGB(255, 115, 11, 3),
                fontSize: 28,
              )),
          child: const Text("Roll Dice"),
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepOrange),
                elevation: MaterialStatePropertyAll(10),
                shape: MaterialStatePropertyAll(BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))))),
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white, fontSize: 28),
            )),
        OutlinedButton(onPressed: rollDice, child: const Text("Roll Dice"))
      ],
    );
  }
}
