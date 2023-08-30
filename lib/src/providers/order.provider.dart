import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/order.dart';

final selectedOrderProvider =
    AsyncNotifierProvider<OrderProvider, Order>(OrderProvider.new);

class OrderProvider extends AsyncNotifier<Order> {
  @override
  Future<Order> build() async {
    final order = Order();
    order.saveInLocalDb(await LocalDB.database);
    return Order();
  }
}
