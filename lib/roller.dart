import 'package:flutter/material.dart';
import 'dart:math';

const align1 = Alignment.bottomRight;
const align2 = Alignment.topLeft;
var activedice = 1;
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      activedice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(88, 4, 234, 0.895),
          Color.fromARGB(255, 178, 142, 239)
        ], begin: align1, end: align2),
      ),
      child: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Image.asset(
            "assets/images/dice-$activedice.png",
            width: 90,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text(
              "Roll the Dice",
            ),
          )
        ]),
      ),
    );
  }
}
