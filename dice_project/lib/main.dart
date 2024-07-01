import 'package:flutter/material.dart';
import 'package:dice_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 24, 159),
        body: GradientContainer(),
      ),
    ),
  );
}