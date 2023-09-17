import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/extensions/src/order.ext.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';

final orderSlProvider =
    NotifierProvider<OrderProvider, int?>(OrderProvider.new);

class OrderProvider extends Notifier<int?> {
  @override
  int? build() => null;

  void set(int sl) => state = sl;

  Future onItemPress(Product? product) async {
    if (product == null) return;
    final item = Item.fromProduct(product);

    final isInCart =
        (await ItemTable().getItems(orderSerial: state!)).contains(item);

    if (isInCart) {
      final count = (await ItemTable().getItemDataById(item.id!)).count;
      if (count == null) return;
      await onQuantityAdd(item, count + 1);
    } else {
      //add new item
      await ItemTable()
          .insertItem(item.copyWith(count: 1).toTableData(), state!);
    }
    await updateCalculationFields();
  }

  Future updateCalculationFields() async {
    final order = Order.fromTableData(await OrderTable().getOrderBySl(state!));
    final items = await ItemTable().getItems(orderSerial: state!);

    order.discountAmount;

    final grossTotal = items.grossTotal;
    final discountAmount = order.getDisocuntAmount(total: grossTotal);
    final totalVat = items.totalVat;
    const totalTax = 0; //retrive tax from config table
    final netTotal = (grossTotal + totalVat + totalTax) - discountAmount;

    await OrderTable().updateGrossTotal(state!, grossTotal);
    await OrderTable().updateVat(state!, totalVat);
    await OrderTable().updateNetTotal(state!, netTotal);
  }

  Future<void> onQuantityAdd(Item? item, int updatedQnt) async {
    if (item == null) return;
    await ItemTable().updateQuantity(item.id!, updatedQnt);
    await updateCalculationFields();
  }

  Future<void> onQuantityRemove(Item? item) async {
    if (item == null || item.count! <= 1) return;
    await ItemTable().updateQuantity(item.id!, item.count! - 1);
    await updateCalculationFields();
  }

  Future removeItemFromCart(Item item) async {
    await ItemTable().removeItemById(item.id);
    await updateCalculationFields();
  }

  // double grossTotal(List<Item>? items) {
  //   if (items == null || items.isEmpty) return 0.00;
  //   return items.fold(0.0, (sum, Item item) {
  //     final price = item.price ?? 0.0;
  //     return sum + (price) * item.count!;
  //   });
  // }

  //  double balance({required int index}) {
  //   double amount = transactions[index].transactionAmount ?? 0.0;
  //   if (index == 0) {
  //     return netTotal - amount;
  //   }
  //   return netTotal - prevAmounts(index + 1);
  // }

  Future resetOrder() async {
    final orders = (await OrderTable().getAllOrders());
    if (orders.isNotEmpty) {
      return orders.last.sl;
    } else {
      final orderTime = DateTime.now();
      final sl = await OrderTable().insetOrder(OrderTableCompanion(
        orderDateTime: Value(orderTime),
      ));
      return (await OrderTable().getOrderBySl(sl));
    }
  }
}
