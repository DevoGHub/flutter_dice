import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(62, 20, 20, 1),
        fontSize: 28,
      ),
    ); // Text is another widget class. the first param is positional and is the readable text.
  }
}
