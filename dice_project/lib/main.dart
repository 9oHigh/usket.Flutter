import 'package:flutter/material.dart';
import 'package:dice_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 78, 44, 138),
          Color.fromARGB(255, 48, 26, 84),
        ),
      ),
    ),
  );
}
