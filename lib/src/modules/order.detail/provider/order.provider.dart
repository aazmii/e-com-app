import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/components/confirm.dialog.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';

final orderProvider = NotifierProvider<OrderProvider, int?>(OrderProvider.new);

class OrderProvider extends Notifier<int?> {
  @override
  int? build() => null;

  void set(int sl) => state = sl;

  Future reset() async => state = await createNewOrder();

  Future onItemPress(Product? product) async {
    if (product == null) return;
    final item = Item.fromProduct(product);

    final isInCart =
        (await ItemTable.getItems(orderSerial: state!)).contains(item);

    if (isInCart) {
      final count = (await ItemTable.getItemDataById(item.id!)).count;
      if (count == null) return;
      await onQuantityAdd(item, count + 1);
    } else {
      //add new item
      await ItemTable.insertItem(item.copyWith(count: 1), state!);
    }
    await updateCalculationFields();
  }

  Future removeAndResetOrder(int orderSl) async {
    await OrderTable.removeOrder(state)
        .then((v) => ItemTable.removeAllByOrderId(orderSl))
        .then((v) => PaymentDetailTable.deletePaymentsByOrderId(state));
    final orders = (await OrderTable.getAllOrders());
    if (orders.isEmpty) {
      state = await createNewOrder();
    }
  }

  Future onPressNewOrder(BuildContext context) async {
    if (state == null) return;
    final shouldKeep = await confirmDialog(context, 'Keep in draft?',
        cancelText: 'No', confirmText: 'Save');
    if (shouldKeep == null) return;
    if (shouldKeep) {
      state = await createNewOrder();
    } else {
      await removeAndResetOrder(state!);
    }
  }

  Future updateCalculationFields() async {
    final order = Order.fromTableData(await OrderTable.getOrderBySl(state!));
    final items = await ItemTable.getItems(orderSerial: state!);

    final grossTotal = items.grossTotal;
    final discountAmount = order.getDisocuntAmount(total: grossTotal);
    final totalVat = items.totalVat;
    double totalTax =
        items.totalTax(config!.taxPercentage!); //retrive tax from config table
    final netTotal = (grossTotal + totalVat + totalTax) - discountAmount;
    await OrderTable.updateGrossTotal(state!, grossTotal);
    await OrderTable.updateVat(state!, totalVat);
    await OrderTable.updateNetTotal(state!, netTotal);
  }

  Future updateItemName(
    String? id, {
    String? name,
  }) async {
    if (id == null) return;
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      ItemTableCompanion(name: Value(name)),
    );
  }

  Future updateItemPrice(
    String? id,
    String? s,
  ) async {
    if (id == null) return;
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      ItemTableCompanion(
        price: Value(
          (s != null ? double.tryParse(s) : 0) ?? 0,
        ),
      ),
    );
  }

  Future updateItemVat(
    String? id,
    String? s,
  ) async {
    if (id == null) return;
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      ItemTableCompanion(
        vat: Value(
          (s != null ? double.tryParse(s) : 0) ?? 0,
        ),
      ),
    );
  }

  Future<void> onQuantityAdd(Item? item, int updatedQnt) async {
    if (item == null) return;
    await ItemTable.updateQuantity(item.id!, updatedQnt);
    await updateCalculationFields();
  }

  Future<void> onQuantityRemove(Item? item) async {
    if (item == null || item.count! <= 1) return;
    await ItemTable.updateQuantity(item.id!, item.count! - 1);
    await updateCalculationFields();
  }

  Future removeItemFromCart(Item item) async {
    await ItemTable.removeItemById(item.id);
    await updateCalculationFields();
  }

  Future onCustomerFieldChange(String s, CustomerInfoType info) async {
    switch (info) {
      case CustomerInfoType.name:
        await OrderTable.updateCustomerName(state!, s);
        break;
      case CustomerInfoType.phone:
        await OrderTable.updateCustomerPhone(state!, s);
        break;
      case CustomerInfoType.loyalityCard:
        await OrderTable.updateCustomerLoyaltiCardNumber(state!, s);
        break;
    }
  }

  Future<int> createNewOrder() async {
    final sl = await OrderTable.insetOrder(OrderTableCompanion(
      orderDateTime: Value(DateTime.now()),
    )).then(
      (orderSl) {
        PaymentDetailTable.insertPayment(
                PaymentDetailTableCompanion(orderId: Value(orderSl)))
            .then((value) {
          return ItemTable.insertItem(
              Item(
                  id: uuid.v4(),
                  name: '',
                  count: 1,
                  price: 0,
                  isCustomItem: true),
              orderSl);
        });

        return orderSl;
      },
    );
    return sl;
  }
}
