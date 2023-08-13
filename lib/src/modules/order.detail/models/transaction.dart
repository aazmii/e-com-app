// ignore_for_file: public_member_api_docs, sort_constructors_first
 

import 'package:pos_sq/src/constants/constants.dart';

import 'payment.type.model.dart';

class Transaction {
  Transaction({
    this.transactionId,
    this.digitalPaymentType = DigitalPaymentType.digitalPayemnt,
    this.transactionAmount,
    this.paymentType = PaymentType.cash,
    this.transactionDetail,
  });

  int? transactionId;
  String? transactionDetail;
 
  PaymentType paymentType;
  double? transactionAmount;
 
  DigitalPaymentType digitalPaymentType;
  Transaction copyWith({
    List<PaymentTypeModel>? payemntOptions,
    int? transactionId,
    DigitalPaymentType? digitalPaymentType,
    String? transactionDetail,
    PaymentType? paymentType,
    double? transactionAmount,
  }) =>
      Transaction(
        transactionId: transactionId ?? this.transactionId,
        paymentType: paymentType ?? this.paymentType,
        digitalPaymentType: digitalPaymentType ?? this.digitalPaymentType,
        transactionAmount: transactionAmount ?? this.transactionAmount,
        transactionDetail: transactionDetail ?? this.transactionDetail,
      );
}
