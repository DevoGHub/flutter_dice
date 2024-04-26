import 'package:flutter/material.dart';
import 'package:flutter_dice/gradient_container.dart'; // Basic Flutter file

const colorsList = [
  Colors.green,
  Color.fromRGBO(100, 100, 100, 1),
];

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(88, 14, 14, 1),
        body: GradientContainer(colorsList),
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