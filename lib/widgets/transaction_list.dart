import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.yellow[200],
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.green[800],
                width: 2,
              )),
              padding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 6,
              ),
              child: Text(
                '\$${transactions[index].amount}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green[800]),
              ),
            ),
            Column(children: <Widget>[
              Text(
                transactions[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue[800],
                ),
              ),
              Text(
                DateFormat.yMMMd().format(transactions[index].date),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ], crossAxisAlignment: CrossAxisAlignment.start),
          ]));
        },
      ),
    );
  }
}
