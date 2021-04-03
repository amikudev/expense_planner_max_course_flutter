import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTransaction;

  NewTransaction(this.addTransaction);

  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: _titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: _amountController,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  addTransaction(_titleController.text,
                      double.parse(_amountController.text));
                },
                child: Text("Add Transaction"),
                style: ElevatedButton.styleFrom(
                  elevation: 10,
                ))
          ],
        ),
      ),
    );
  }
}
