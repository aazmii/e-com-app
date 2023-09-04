// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:pos_sq/src/constants/constants.dart';

import '../payment.type/payment.type.model.dart';

class Transaction {
  Transaction({
    this.digitalPaymentType = DigitalPaymentType.digitalPayemnt,
    this.transactionAmount,
    this.paymentType = PaymentType.none,
    this.transactionDetail,
  });

  String? transactionDetail;

  PaymentType paymentType = PaymentType.none;
  double? transactionAmount;
  DigitalPaymentType digitalPaymentType;
  Transaction copyWith({
    List<PaymentTypeModel>? payemntOptions,
    DigitalPaymentType? digitalPaymentType,
    String? transactionDetail,
    PaymentType? paymentType,
    double? transactionAmount,
  }) =>
      Transaction(
        paymentType: paymentType ?? this.paymentType,
        digitalPaymentType: digitalPaymentType ?? this.digitalPaymentType,
        transactionAmount: transactionAmount ?? this.transactionAmount,
        transactionDetail: transactionDetail ?? this.transactionDetail,
      );
}
