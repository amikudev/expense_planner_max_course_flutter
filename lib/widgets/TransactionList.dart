import 'package:expense_planner_max_course/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> _userTransactions;

  TransactionList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
        return Card(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            // color: Colors.lightGreen,
            child: Row(
              children: <Widget>[
                Container(
                  // child: tx.amount.text.bold.make(),
                  child: Text(
                    "\$${tx.amount.toString()}",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      tx.title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      // tx.date.toString(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
          ),
          elevation: 10,
        );
        /**/
      }).toList(),
    );
  }
}
