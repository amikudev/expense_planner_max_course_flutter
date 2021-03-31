import 'package:expense_planner_max_course/transaction.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpenseTracker extends StatefulWidget {
  @override
  _ExpenseTrackerState createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final List<Transaction> transactions = [
    Transaction(
      id: "1",
      title: "Shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Weekly groceries",
      amount: 9.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "4",
      title: "Towels",
      amount: 12.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Expense Tracker".text.make()),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.grey,
                child: Center(
                  child: "Chart".text.make(),
                ),
              ),
              elevation: 5,
            ),
            ...transactions.map((tx) {
              return Card(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.lightGreen,
                  child: Center(
                    child: tx.title.text.make(),
                  ),
                ),
                elevation: 5,
              );
              /**/
            }).toList()
          ],
        ),
      ),
    );
  }
}
