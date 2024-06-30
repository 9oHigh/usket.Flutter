import 'package:flutter/material.dart';

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

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 78, 44, 138),
                Color.fromARGB(255, 48, 26, 84)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              "Hello, world!!",
              style: TextStyle(color: Colors.white, fontSize: 28.5),
            ),
          ),
        );
  }
}