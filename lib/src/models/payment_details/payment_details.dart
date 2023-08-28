import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentDetails {
  String? paymenttype;
  String? transactiondetails;
  double? amount;
  PaymentDetails({
    this.paymenttype,
    this.transactiondetails,
    this.amount,
  });

  PaymentDetails copyWith({
    String? paymenttype,
    String? transactiondetails,
    double? amount,
  }) {
    return PaymentDetails(
      paymenttype: paymenttype ?? this.paymenttype,
      transactiondetails: transactiondetails ?? this.transactiondetails,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymenttype': paymenttype,
      'transactiondetails': transactiondetails,
      'amount': amount,
    };
  }

  factory PaymentDetails.fromMap(Map<String, dynamic> map) {
    return PaymentDetails(
      paymenttype:
          map['paymenttype'] != null ? map['paymenttype'] as String : null,
      transactiondetails: map['transactiondetails'] != null
          ? map['transactiondetails'] as String
          : null,
      amount: map['amount'] != null ? map['amount'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentDetails.fromJson(String source) =>
      PaymentDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PaymentDetails(paymenttype: $paymenttype, transactiondetails: $transactiondetails, amount: $amount)';
}
