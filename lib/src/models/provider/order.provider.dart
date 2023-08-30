import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/order.dart';

final orderProvider =
    AsyncNotifierProvider<OrderNotifier, Order>(OrderNotifier.new);

class OrderNotifier extends AsyncNotifier<Order> {
  @override
  build() async {
    return Order();
  }

  Future createtable() async {
    Order.createTable(
      await LocalDB.database,
    );
  }
}
