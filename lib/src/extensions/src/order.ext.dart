import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';

extension OrderExt on Order {
  getDisocuntAmount({required double total}) {
    if (discountType == null || discountAmount == null || discountAmount == 0) {
      return 0.0;
    }
    if (discountType == DiscountType.cash) return discountAmount;
    return total * (discountAmount! / 100);
  }
}
