import 'package:flutter/cupertino.dart';
import 'package:flutter_accademic/models/new_transaction.dart';
import 'package:flutter_accademic/models/transaction.dart';

import '../widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '123',
      title: "New Shoes",
      amount: 66.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: '124',
      title: "New Phone",
      amount: 166.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: '125',
      title: "New Laptop",
      amount: 266.9,
      date: DateTime.now(),
    ),
  ];

  void addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTransaction: addNewTransaction,),
        TransactionList(
          itemList: _userTransactions,
        ),
      ],
    );
  }
}
