import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key, required this.addTransaction}) : super(key: key);
  final Function addTransaction;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  // late String titleInput;
  // late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                // onChanged: (value) => titleInput = value,
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: amountController,
                // onChanged: (value) => amountInput = value,
                decoration: const InputDecoration(
                  labelText: "Amount",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => addTransaction(
                  titleController.text,
                  double.parse(amountController.text),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.add),
                      Text("Add Transaction"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
