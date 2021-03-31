import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExpenseTracker extends StatelessWidget {
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
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.grey,
                child: Center(
                  child: "Transactions".text.make(),
                ),
              ),
              elevation: 5,
            )
          ],
        ),
      ),
    );
  }
}
