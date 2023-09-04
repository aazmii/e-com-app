import 'dart:convert';

import 'package:sqflite/sqflite.dart';

part 'payement.deitail.ext.dart';

class PaymentDetail {
  final String? paymentType;
  final String? transactionDetails;
  final double? amount;
  PaymentDetail({
    this.paymentType,
    this.transactionDetails,
    this.amount,
  });

  PaymentDetail copyWith({
    String? paymentType,
    String? transactionDetails,
    double? amount,
  }) {
    return PaymentDetail(
      paymentType: paymentType ?? this.paymentType,
      transactionDetails: transactionDetails ?? this.transactionDetails,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymenttype': paymentType,
      'transactiondetails': transactionDetails,
      'amount': amount,
    };
  }

  static PaymentDetail fromMap(Map<String, dynamic> map) {
    return PaymentDetail(
      paymentType: map['paymenttype'] as String?,
      transactionDetails: map['transactiondetails'] as String?,
      amount: double.tryParse(map['amount']),
    );
  }

  static PaymentDetail fromDbMap(Map<String, dynamic> map) {
    return PaymentDetail(
      paymentType: map['payment_type'] as String?,
      transactionDetails: map['transaction_details'] as String?,
      amount: map['amount'] != null ? map['amount'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentDetail.fromJson(String source) =>
      PaymentDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PaymentDetail(paymentType: $paymentType, transactionDetails: $transactionDetails, amount: $amount)';

  @override
  bool operator ==(covariant PaymentDetail other) {
    if (identical(this, other)) return true;

    return other.paymentType == paymentType &&
        other.transactionDetails == transactionDetails &&
        other.amount == amount;
  }

  @override
  int get hashCode =>
      paymentType.hashCode ^ transactionDetails.hashCode ^ amount.hashCode;

  static Future createTable(Database db) async {
    await db.execute(
        '''
          CREATE TABLE payment_detail (
          sl INTEGER PRIMARY KEY AUTOINCREMENT,
          payment_type ,
          transaction_details ,
          amount 
          )
    ''');
  }
}
