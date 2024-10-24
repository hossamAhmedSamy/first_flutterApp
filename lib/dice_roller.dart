
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
    
  }

}

class _DiceRollerState extends State<DiceRoller> {

List<String> activeDiceImage = [
  'assets/images/dice-1.png',
  'assets/images/dice-2.png',
  'assets/images/dice-3.png',
  'assets/images/dice-4.png',
  'assets/images/dice-5.png',
  'assets/images/dice-6.png',
];
  
  void rollDice(){
    setState(() {
      activeDiceImage.shuffle();
    });
  }

  @override
  Widget build(context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage.first,
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              foregroundColor: const Color.fromARGB(255, 233, 168, 4),
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text(
              'Roll Dice',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 222, 233, 5),
              ),
            ),
          )
        ],
      );
  }
  

}