import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/order.dart';

final orderProvider = StreamProvider<Order>((ref) async* {
  Order order;
  if (await LocalDB.getDbCount('orders') > 1) {
    order = Order.fromDbMap(await LocalDB.getLastItem('orders'));
  } else {
    await Order(orderTime: DateTime.now())
        .saveInLocalDb(await LocalDB.database);
    order = Order.fromDbMap(await LocalDB.getLastItem('orders'));
  }
  yield order;
});
