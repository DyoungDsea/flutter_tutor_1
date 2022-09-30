import 'package:flutter/material.dart';
import 'package:flutter_accademic/models/user_transaction.dart';

void main() => runApp(const MyTransactionApp());

class MyTransactionApp extends StatelessWidget {
  const MyTransactionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Transaction App"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: const SingleChildScrollView(child: UserTransactions()),
      ),
    );
  }
}
