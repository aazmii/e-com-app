import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order.dart';

final orderProvider =
    AsyncNotifierProvider<OrderNotifier, Order>(OrderNotifier.new);

class OrderNotifier extends AsyncNotifier<Order> {
  @override
  build() async {
    return Order(discountType: DiscountType.cash);
  }

  Future createtable() async {
    Order(discountType: DiscountType.cash).createTable(
      await LocalDB().database,
    );
  }
}
