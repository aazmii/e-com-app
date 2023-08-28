import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PaymentDetails {
  String? paymentType;
  String? transactionDetails;
  double? amount;
  PaymentDetails({
    this.paymentType,
    this.transactionDetails,
    this.amount,
  });

  PaymentDetails copyWith({
    String? paymentType,
    String? transactionDetails,
    double? amount,
  }) {
    return PaymentDetails(
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

  static PaymentDetails fromMap(Map<String, dynamic> map) {
    return PaymentDetails(
      paymentType:
          map['paymenttype'] != null ? map['paymenttype'] as String : null,
      transactionDetails: map['transactiondetails'] != null
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
      'PaymentDetails(paymentType: $paymentType, transactionDetails: $transactionDetails, amount: $amount)';
}
