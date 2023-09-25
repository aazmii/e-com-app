import 'package:pos_sq/src/constants/constants.dart';

import 'payment.type.model.dart';

class CustomerTransaction {
  CustomerTransaction({
    this.transactionId,
    this.digitalPaymentType = DigitalPaymentType.digitalPayment,
    this.transactionAmount,
    this.paymentType = PaymentType.cash,
    this.transactionDetail,
  });

  int? transactionId;
  String? transactionDetail;

  PaymentType paymentType;
  double? transactionAmount;

  DigitalPaymentType digitalPaymentType;
  CustomerTransaction copyWith({
    List<PaymentTypeModel>? payemntOptions,
    int? transactionId,
    DigitalPaymentType? digitalPaymentType,
    String? transactionDetail,
    PaymentType? paymentType,
    double? transactionAmount,
  }) =>
      CustomerTransaction(
        transactionId: transactionId ?? this.transactionId,
        paymentType: paymentType ?? this.paymentType,
        digitalPaymentType: digitalPaymentType ?? this.digitalPaymentType,
        transactionAmount: transactionAmount ?? this.transactionAmount,
        transactionDetail: transactionDetail ?? this.transactionDetail,
      );
}
