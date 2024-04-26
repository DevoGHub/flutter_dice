import 'package:flutter/material.dart';
import 'package:flutter_dice/die_roller.dart';

const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colorsList;

  // const GradientContainer({key}): super(key: key); or
  const GradientContainer(this.colorsList, {super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText(text),
        child: DieRoller(),
      ), // Center is used to center everything along both axis
    ); // Basically div - cannot be const, nor can its ancestors
  } // build s called when this widget is used
} // Custom Widget; used for reusable widget blocks
