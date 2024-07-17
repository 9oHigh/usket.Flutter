import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<QuestionsScreen> {

  @override
  Widget build(BuildContext context) {
    return const Text("QuestionScreen");
  }
}