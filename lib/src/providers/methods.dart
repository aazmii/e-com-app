// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pos_sq/src/sqflite/sqflite.db.dart';
// import 'package:pos_sq/src/models/order/order.dart';
// import 'package:pos_sq/src/providers/order.provider.dart';

// final selectedOrderProvider =
//     AsyncNotifierProvider<OrderProvider, Order>(OrderProvider.new);

// class OrderProvider extends AsyncNotifier<Order> {
//   @override
//   Future<Order> build() async {
//     final count = await LocalDB.getDbCount('orders');
//     Order order;
//     if (count! > 0) {
//       order = Order.fromDbMap(await LocalDB.getLastItem('orders'));
//     } else {
//       order = await getNewOrderFromDb();
//     }
//     ref.watch(orderProvider.notifier).setOrder(order);
//     return order;
//   }
// }

// Future<Order> getNewOrderFromDb() async {
//   await Order(orderTime: DateTime.now()).saveInLocalDb(await LocalDB.database);

//   return Order.fromDbMap(await LocalDB.getLastItem('orders'));
// }
