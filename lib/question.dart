import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({Key? key, required this.questionText}) : super(key: key);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
