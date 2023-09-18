import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';

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
      (orderId) {
        PaymentDetailTable().insertPayment(
            PaymentDetailTableCompanion(orderId: Value(orderId)));
        ItemTable()
            .insertItem(Item(name: '', count: 1, price: 0), orderId)
            .then((itemSl) {
          ItemTable().updateId(itemSl, itemSl.toString());
        });
        return orderId;
      },
    );
    return (await OrderTable().getOrderBySl(sl)).sl;
  }
}

void selectAll(TextEditingController controller) =>
    controller.selection = TextSelection(
      baseOffset: 0,
      extentOffset: controller.value.text.length,
    );
