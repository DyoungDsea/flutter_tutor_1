import 'package:flutter/material.dart';
import 'package:flutter_accademic/answer.dart';
import 'package:flutter_accademic/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "What's your name?",
      "What is your best color?",
      "How old are you?",
      "What is name of your Mum?",
    ];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Tutor",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Question(questionText: question[questionIndex]),
                  const SizedBox(height: 8.0),
                  Answer(
                    answerText: "answerText",
                    onPressed: _answerQuestion,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
