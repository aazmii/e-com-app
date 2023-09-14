import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';

Future<int> getSelectedOrderSerial() async {
  final orders = (await OrderTable().getAllOrders());
  if (orders.isNotEmpty) {
    return orders.last.sl;
  } else {
    final sl = await OrderTable()
        .insetOrder(OrderTableCompanion(
          orderDateTime: Value(DateTime.now()),
        ))
        .then(
          (v) => PaymentDetailTable().insertPayment(
            PaymentDetailTableCompanion(orderId: Value(v)),
          ),
        );
    return (await OrderTable().getOrderBySl(sl)).sl;
  }
}
