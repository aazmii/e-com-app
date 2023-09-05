import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/order/order.dart';

final draftOrdersProvider =
    AsyncNotifierProvider<DraftOrders, List<Order>>(DraftOrders.new);

class DraftOrders extends AsyncNotifier<List<Order>> {
  @override
  FutureOr<List<Order>> build() async {
    // return (await LocalDB.getAllData('orders'))
    //     .map((e) => Order.fromDbMap(e))
    //     .toList();
    return [];
  }

  Future<void> delete(Order order) async {
    // await order.deleteFromDb();

    // state = AsyncData((await LocalDB.getAllData('orders'))
    //     .map((e) => Order.fromDbMap(e))
    //     .toList());
    // await ref.read(orderProvider.notifier).resetOrder();
  }
}
