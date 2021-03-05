import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  String title;
  double amount;
  DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
  Transaction.fromMap(Map map) {
    this.id = map['id'];
    this.title = map['title'];
    this.amount = map['amount'];
    this.date = DateTime.parse(map['date']);
  }
  Map toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'amount': this.amount,
      'date': this.date.toIso8601String(),
    };
  }
}
