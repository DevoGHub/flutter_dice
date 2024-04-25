import 'package:flutter/material.dart'; // Basic Flutter file

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}): super(key: key); or
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Color.fromRGBO(100, 100, 100, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Color.fromRGBO(62, 20, 20, 1),
            fontSize: 28,
          ),
        ), // Text is another widget class. the first param is positional and is the readable text.
      ), // Center is used to center everything along both axis
    ); // Basically div - cannot be const, nor can its ancestors
  } // build s called when this widget is used
} // Custom Widget; used for reusable widget blocks

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(88, 14, 14, 1),
        body: GradientContainer(),
      ), // Scaffold is to organise and style elements
    ), // MaterialApp() is a widget class and this syntax is the cnstructor declaration. This is the root element too, somewhat like <html>
  ); // Calling the runApp() function from flutter/material.dart package; show the App UI
} // Custom Function; has to be the main function to execute on app


// Note: Dart supports both named as well as positional parameters.
// Syntax
// void add1(int num1, int num2) { // Positional Arguments
// num1 + num2;
// }

// void add2({int num1, int num2}) { // Named Arguments
// num1 + num2;
// }

// Calling Example:
// add1(1, 2);
// add2(num2: 1, num1: 2);

// Named params are always defined after positional params

// Named params can have definition like add2({int? num1, int num2 = 2}) // Implies that num1 is optional and that num2 has a default value of 2