import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/order.dart';

final draftOrdersProvider =
    AsyncNotifierProvider<DraftOrders, List<Order>>(DraftOrders.new);

class DraftOrders extends AsyncNotifier<List<Order>> {
  @override
  FutureOr<List<Order>> build() async => (await LocalDB.getAllData('orders'))
      .map((e) => Order.fromDbMap(e))
      .toList();

  Future<void> delete(Order order) async {
    await order.delete();
    state = AsyncData((await LocalDB.getAllData('orders'))
        .map((e) => Order.fromDbMap(e))
        .toList());
  }
}

// final draftStreamProvider = StreamProvider<List<Order>>((ref) async* {
//   yield (await LocalDB.getAllData('orders'))
//       .map((e) => Order.fromDbMap(e))
//       .toList();
// });
