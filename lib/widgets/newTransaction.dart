import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addTransaction;

  NewTransaction(this.addTransaction);

  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  submitData () {
    final enteredText = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if(enteredText.isEmpty || enteredAmount <= 0) {
      return;
    }

    addTransaction(enteredText, enteredAmount);
  }
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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: submitData,
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
