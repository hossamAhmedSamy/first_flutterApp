import 'package:flutter/material.dart';

class styledText extends StatelessWidget {
   const styledText( this.text, {super.key});
   final String text ;

  @override
  Widget build(context) {
    return  Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
    );
  }
}
