part of '../extensions.dart';

extension OrderExt on Order {
  getDisocuntAmount({required double total}) {
    if (discountType == null || discountAmount == null || discountAmount == 0) {
      return 0.0;
    }
    if (discountType == DiscountType.cash) return discountAmount;
    return total * (discountAmount! / 100);
  }
}
