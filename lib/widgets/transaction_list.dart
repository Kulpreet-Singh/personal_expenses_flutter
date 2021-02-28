import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: transactions.map((tx) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMEEEEd().format(tx.date),
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
