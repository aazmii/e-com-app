import 'package:flutter/material.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';

// Future<int> getSelectedOrderSerial() async {
//   final orders = (await OrderTable.getAllOrders());
//   if (orders.isNotEmpty) {
//     return orders.last.sl;
//   } else {
//     final sl = await OrderTable.insetOrder(OrderTableCompanion(
//       orderDateTime: Value(DateTime.now()),
//     )).then(
//       (orderSl) {
//         PaymentDetailTable.insertPayment(
//             PaymentDetailTableCompanion(orderId: Value(orderSl)));
//         addCustomItemInOrder(orderSl);
//         return orderSl;
//       },
//     );
//     return (await OrderTable.getOrderBySl(sl)).sl;
//   }
// }

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

double prevAmounts(List<PaymentDetail> payments, int indexUntil) =>
    payments.sublist(0, indexUntil).fold(0.0, (p, t) {
      double amount = t.amount ?? 0;
      return p + amount;
    });

double findBalance(List<PaymentDetail> payments, int index, double netTotal) {
  double amount = payments[index].amount ?? 0.0;
  if (index == 0) {
    return netTotal - amount;
  }
  return netTotal - prevAmounts(payments, index + 1);
}
