import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
Future<int> getSelectedOrderSerial() async {
  final orders = (await OrderTable.getAllOrders());
  if (orders.isNotEmpty) {
    return orders.last.sl;
  } else {
    final sl = await OrderTable.insetOrder(OrderTableCompanion(
      orderDateTime: Value(DateTime.now()),
    )).then(
      (orderSl) {
        PaymentDetailTable
            .insertPayment(PaymentDetailTableCompanion(id: Value(orderSl)));
        addCustomItemInOrder(orderSl);
        // ItemTable()
        //     .insertItem(Item(name: '', count: 1, price: 0), orderSl)
        //     .then((itemSl) {
        //   ItemTable().updateId(itemSl, itemSl.toString());
        // });
        return orderSl;
      },
    );
    return (await OrderTable.getOrderBySl(sl)).sl;
  }
}

Future addCustomItemInOrder(int orderSl) async {
  ItemTable.insertItem(
      Item(id: uuid.v4(), name: '', count: 1, price: 0, isCustomItem: true),
      orderSl);
}

void selectAll(TextEditingController controller) =>
    controller.selection = TextSelection(
      baseOffset: 0,
      extentOffset: controller.value.text.length,
    );
