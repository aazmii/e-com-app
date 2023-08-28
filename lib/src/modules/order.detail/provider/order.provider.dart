import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/models/order/customer.order.dart';

final selectedOrderProvider =
    NotifierProvider<OrderProvider, Order>(OrderProvider.new);

class OrderProvider extends Notifier<Order> {
  @override
  Order build() {
    return Order();
  }
}
