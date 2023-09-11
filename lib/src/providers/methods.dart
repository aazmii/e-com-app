import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';

Future<int> getSelectedOrderSerial() async {
  
  final orders = (await OrderDb().getAllOrders());
  if (orders.isNotEmpty) {
    return orders.last.sl;
  } else {
    final orderTime = DateTime.now();
    OrderDb().insetOrder(OrderTableCompanion(
      orderDateTime: Value(orderTime),
    ));
    return (await OrderDb().getOrderBySavedTime(orderTime)).sl;
  }
}
