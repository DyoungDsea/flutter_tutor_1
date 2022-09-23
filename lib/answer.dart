import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({Key? key, required this.answerText, this.onPressed})
      : super(key: key);
  final String answerText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
