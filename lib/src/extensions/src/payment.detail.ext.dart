part of '../extensions.dart';

extension PaymentDetailExt on PaymentDetail {
  bool isMethodSelected() =>
      paymentType != null || paymentType != PaymentType.none;
}
