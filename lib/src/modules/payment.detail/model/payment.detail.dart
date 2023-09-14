// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/constants.dart';

class PaymentDetail {
  int? id;
  int? orderId;
  String? transactionDetail;
  PaymentType? paymentType;
  DigitalPaymentType? digitalPaymentType;
  double? amount;

  PaymentDetail({
    this.id,
    this.orderId,
    this.amount,
    this.paymentType,
    this.transactionDetail,
    this.digitalPaymentType,
  });

  PaymentDetail copyWith({
    int? id,
    int? orderId,
    String? transactionDetail,
    PaymentType? paymentType,
    DigitalPaymentType? digitalPaymentType,
    double? amount,
  }) {
    return PaymentDetail(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      transactionDetail: transactionDetail ?? this.transactionDetail,
      paymentType: paymentType ?? this.paymentType,
      digitalPaymentType: digitalPaymentType ?? this.digitalPaymentType,
      amount: amount ?? this.amount,
    );
  }

  PaymentDetailTableData toTableData() => PaymentDetailTableData(
        id: id,
        orderId: orderId,
        transactionDetail: transactionDetail,
        paymentType: paymentType?.name,
        digitalPaymentType: digitalPaymentType?.name,
        amount: amount,
      );

  static PaymentDetail fromTableData(PaymentDetailTableData data) {
    return PaymentDetail(
      id: data.id,
      orderId: data.orderId,
      paymentType: stringToPaymentType(data.paymentType),
      digitalPaymentType: stringToDigitalPaymentType(data.digitalPaymentType),
      amount: data.amount,
    );
  }

  static PaymentType? stringToPaymentType(String? input) {
    if (input == null) return PaymentType.none;
    switch (input.toLowerCase()) {
      case 'cash':
        return PaymentType.cash;
      case 'card':
        return PaymentType.card;
      case 'onlinepayment':
        return PaymentType.onlinePayment;
      case 'digitalPayment':
        return PaymentType.digitalPayment;
      case 'none':
        return PaymentType.none;
      default:
        return null;
      // throw Exception("Invalid payment type string: $input");
    }
  }

  static DigitalPaymentType stringToDigitalPaymentType(String? input) {
    if (input == null) return DigitalPaymentType.digitalPayment;
    switch (input.toLowerCase()) {
      case 'digitalpayment':
        return DigitalPaymentType.digitalPayment;
      case 'bkash':
        return DigitalPaymentType.bkash;
      case 'rocket':
        return DigitalPaymentType.rocket;
      case 'nagad':
        return DigitalPaymentType.nagad;
      case 'ukash':
        return DigitalPaymentType.ukash;
      case 'upay':
        return DigitalPaymentType.upay;
      default:
        throw Exception("Invalid digital payment type string: $input");
    }
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'orderId': orderId,
      'transactionDetail': transactionDetail,
      'paymentType': paymentType != null ? paymentType!.name : null,
      'digitalPaymentType':
          digitalPaymentType != null ? digitalPaymentType!.name : null,
      'amount': amount,
    };
  }

  static PaymentDetail fromMap(Map<String, dynamic> map) {
    return PaymentDetail(
      id: map['id'] != null ? map['id'] as int : null,
      orderId: map['orderId'] != null ? map['orderId'] as int : null,
      transactionDetail: map['transactionDetail'] != null
          ? map['transactionDetail'] as String
          : null,
      paymentType: null,
      digitalPaymentType: null,
      amount: map['amount'] != null ? map['amount'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory PaymentDetail.fromJson(String source) =>
  //     PaymentDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentDetail(id: $id, orderId: $orderId, transactionDetail: $transactionDetail, paymentType: $paymentType, digitalPaymentType: $digitalPaymentType, amount: $amount)';
  }

  @override
  bool operator ==(covariant PaymentDetail other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
