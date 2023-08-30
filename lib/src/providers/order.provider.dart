// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pos_sq/src/db/app.db.dart';
// import 'package:pos_sq/src/models/order/order.dart';

// final selectedOrderProvider =
//     AsyncNotifierProvider<OrderProvider, Order>(OrderProvider.new);

// class OrderProvider extends AsyncNotifier<Order> {
//   @override
//   Future<Order> build() async {
//     if (await LocalDB.getDbCount('orders') > 1) {
//       return Order.fromDbMap(await LocalDB.getLastItem('orders'));
//     } else {
//       await Order().saveInLocalDb(await LocalDB.database);
//       return Order.fromDbMap(await LocalDB.getLastItem('orders'));
//     }
//   }
// }
