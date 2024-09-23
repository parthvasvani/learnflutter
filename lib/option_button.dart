import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionButton extends StatelessWidget {
  String words;
  final VoidCallback onTop;


  OptionButton({super.key, required this.words, required this.onTop});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.5),
      child: ElevatedButton(onPressed: onTop,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              backgroundColor: Colors.grey[700],
              foregroundColor: Colors.white,
              shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
              textStyle: GoogleFonts.notoSerif(
                  fontSize: 20
              )
          ),

          child: Text(words, textAlign: TextAlign.center,)),
    );
  }
}
