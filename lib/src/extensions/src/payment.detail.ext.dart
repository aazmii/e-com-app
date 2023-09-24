part of '../extensions.dart';

extension PaymentDetailExt on PaymentDetail {
  bool get isMethodSelected {
    return paymentType != PaymentType.none ||
        digitalPaymentType != DigitalPaymentType.digitalPayment;
  }
}
