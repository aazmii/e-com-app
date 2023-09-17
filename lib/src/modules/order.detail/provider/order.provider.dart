import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';

final orderProvider =
    NotifierProvider<_OrderProvider, Order?>(_OrderProvider.new);

class _OrderProvider extends Notifier<Order> {
  @override
  Order build() {
    return Order();
  }
}
