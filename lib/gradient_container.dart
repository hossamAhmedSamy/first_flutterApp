import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

class gradientContainer extends StatelessWidget {
  const gradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
          child: DiceRoller()),
    );
  }
}
