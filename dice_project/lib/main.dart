import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 74, 24, 159),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Color.fromARGB(255, 78, 44, 138),
              Color.fromARGB(255, 48, 26, 84)
            ]),
          ),
          child: const Center(
            child: Text("Hello, world!!"),
          ),
        ),
      ),
    ),
  );
}
