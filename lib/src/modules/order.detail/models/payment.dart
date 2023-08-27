// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqflite/sqflite.dart';
part 'payment.ext.dart';

class Payment {
  int? paymentDetailId;
  String? orderId;
  String? paymentType;
  String? transactionDetail;
  double? amount;
  Payment({
    this.paymentDetailId,
    this.orderId,
    this.paymentType,
    this.transactionDetail,
    this.amount,
  });

  Payment copyWith({
    int? paymentDetailId,
    String? orderId,
    String? paymentType,
    String? transactionDetail,
    double? amount,
  }) {
    return Payment(
      paymentDetailId: paymentDetailId ?? this.paymentDetailId,
      orderId: orderId ?? this.orderId,
      paymentType: paymentType ?? this.paymentType,
      transactionDetail: transactionDetail ?? this.transactionDetail,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentDetailId': paymentDetailId,
      'orderId': orderId,
      'paymentType': paymentType,
      'transactionDetail': transactionDetail,
      'amount': amount,
    };
  }

  factory Payment.fromMap(Map<String, dynamic> map) {
    return Payment(
      paymentDetailId:
          map['paymentDetailId'] != null ? map['paymentDetailId'] as int : null,
      orderId: map['orderId'] != null ? map['orderId'] as String : null,
      paymentType:
          map['paymentType'] != null ? map['paymentType'] as String : null,
      transactionDetail: map['transactionDetail'] != null
          ? map['transactionDetail'] as String
          : null,
      amount: map['amount'] != null ? map['amount'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Payment.fromJson(String source) =>
      Payment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Payment(paymentDetailId: $paymentDetailId, orderId: $orderId, paymentType: $paymentType, transactionDetail: $transactionDetail, amount: $amount)';
  }

  @override
  bool operator ==(covariant Payment other) {
    if (identical(this, other)) return true;

    return other.paymentDetailId == paymentDetailId &&
        other.orderId == orderId &&
        other.paymentType == paymentType &&
        other.transactionDetail == transactionDetail &&
        other.amount == amount;
  }

  @override
  int get hashCode {
    return paymentDetailId.hashCode ^
        orderId.hashCode ^
        paymentType.hashCode ^
        transactionDetail.hashCode ^
        amount.hashCode;
  }
}
