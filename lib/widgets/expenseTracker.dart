import 'package:expense_planner_max_course/widgets/TransactionList.dart';
import 'package:expense_planner_max_course/widgets/newTransaction.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import './TransactionList.dart';

class ExpenseTracker extends StatefulWidget {
  @override
  _ExpenseTrackerState createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  //Expenses
  final List<Transaction> _userTransactions = [
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

  _addTransaction(String title, double amount) {
    setState(() {
      this._userTransactions.insert(
          0,
          Transaction(
            id: DateTime.now().toString(),
            title: title,
            amount: amount,
            date: DateTime.now(),
          ));
    });
  }

  _startAddTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            child: NewTransaction(_addTransaction),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Expense Tracker".text.make(),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              color: Colors.purple,
              onPressed: () {
                _startAddTransaction(context);
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
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
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _startAddTransaction(context);
        },
      ),
    );
  }
}
