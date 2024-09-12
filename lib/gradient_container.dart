
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
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 14, 81, 137),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(40)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/food1.jpg"),
                    ),
                    border: Border(
                        right: BorderSide(color: Colors.green, width: 10))),
                child: const Center(
                  child: Text(
                    "data",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue[500], shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset("assets/images/food1.jpg"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // 3
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(400, 800),
                        topRight: Radius.elliptical(400, 800))),
                child: const StyleText("data"),
              ),
              // 4
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
                child: const StyleText("Dev"),
              )
            ],
          ),
        ));
  }
}
