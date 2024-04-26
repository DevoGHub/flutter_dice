import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dice/styled_text.dart';

final random = Random();
int generateNumber() {
  return random.nextInt(6) + 1;
}

class DieRoller extends StatefulWidget {
  const DieRoller({super.key});

  @override
  State<DieRoller> createState() {
    return _DieRollerState();
  }
}

class _DieRollerState extends State<DieRoller> {
  // leading _ is to define private classes
  int currentNum = generateNumber();

  void rollDie() {
    setState(() {
      currentNum = generateNumber();
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/die-$currentNum.png',
          width: 200,
        ),
        TextButton(
          // onPressed: () {print('Hi');}, // Anonymous function syntax
          onPressed: rollDie,
          // style: TextButton.styleFrom(
          //   foregroundColor: Colors.white,
          //   textStyle: const TextStyle(
          //     fontSize: 28,
          //   ),
          // ),
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(
            top: 20,
          )),
          child: const StyledText('Roll the die'),
        ),
      ],
    );
  }
}
