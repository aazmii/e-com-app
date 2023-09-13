import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

final orderSlProvider =
    NotifierProvider<OrderProvider, int?>(OrderProvider.new);

class OrderProvider extends Notifier<int?> {
  @override
  int? build() => null;

  void set(int sl) => state = sl;

  Future onItemPress(Product? product) async {
    if (product == null) return;
    final item = Item.fromProduct(product);

    final isInCart = (await ItemTable().getItems(orderSerial: state!))
        .map((e) => Item.fromTableData(e))
        .toList()
        .contains(item);

    if (isInCart) {
      final count = (await ItemTable().getItemDataById(item.id!)).count;
      if (count == null) return;
      await onQuantityAdd(item, count + 1);
    } else {
      //add new item
      await ItemTable()
          .insertItem(item.copyWith(count: 1).toTableData(), state!);
    }
  }

  Future<void> onQuantityAdd(Item? item, int updatedQnt) async {
    if (item == null) return;
    await ItemTable().updateQuantity(item.id!, updatedQnt);
  }

  Future<void> onQuantityRemove(Item? item) async {
    if (item == null || item.count! <= 1) return;
    await ItemTable().updateQuantity(item.id!, item.count! - 1);
  }

  Future removeItemFromCart(Item item) async {
    await ItemTable().removeItemById(item.id);
  }

  void onDiscountChange(String? s) async {
    await OrderTable().updateDiscount(state!, double.tryParse(s!)!);
  }

  double grossTotal(List<Item>? items) {
    if (items == null || items.isEmpty) return 0.00;
    return items.fold(0.0, (sum, Item item) {
      final price = item.price ?? 0.0;
      return sum + (price) * item.count!;
    });
  }

  //  double balance({required int index}) {
  //   double amount = transactions[index].transactionAmount ?? 0.0;
  //   if (index == 0) {
  //     return netTotal - amount;
  //   }
  //   return netTotal - prevAmounts(index + 1);
  // }

  Future resetOrder() async {
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
}


// final orderProvider =
//     AsyncNotifierProvider<OrderProvider, Order>(OrderProvider.new);

// class OrderProvider extends AsyncNotifier<Order> {
//   @override
//   Future<Order> build() async {
//     final count = await LocalDB.getDbCount('orders');

//     if (count! > 0) {
//       return Order.fromDbMap(await LocalDB.getLastItem('orders'));
//     } else {
//       state = AsyncData(await getNewOrderFromDb());
//       return state.value!;
//     }
//   }

//   Future addToCart(Product? product) async {
//     print(state.value?.sl);
//     if (product == null) return;

//     final item = Item.fromProduct(product);
//     final isUpdated = await state.value!
//         .addItem(item.copyWith(count: 1, price: product.price ?? 1));
//     print('updated $isUpdated');
//     if (!isUpdated) return;
//     List<Item> items = state.value?.items ?? [];
//     items.add(item);
//     state = AsyncData(state.value!.copyWith(items: items));
//   }

//   Future removeItemFromCart(Item item) async {
//     final isUpdated = await state.value!.removeItem(item.id!);
//     if (!isUpdated) return;
//     List<Item> items = state.value?.items ?? [];
//     items.remove(item);
//     state = AsyncData(state.value!.copyWith(items: items));
//   }

//   Future<void> onQuantityAdd(Item? item) async {
//     if (item == null) return;
//     state.value!.changeItemQuantity(item, ChangeType.increase);
//     // await state.value!.addItem(item);
//   }

//   Future<void> onQuantityRemove(Item? item) async {
//     if (item == null) return;
//     state.value!.changeItemQuantity(item, ChangeType.decrease);
//   }

//   void setOrder(Order selectedOrder) {
//     state = AsyncData(selectedOrder);
//   }

//   Future resetOrder() async => state = AsyncData(await getNewOrderFromDb());

//   Future<Order> getNewOrderFromDb() async {
//     await Order(orderTime: DateTime.now())
//         .saveInLocalDb(await LocalDB.database);

//     return Order.fromDbMap(await LocalDB.getLastItem('orders'));
//   }
// }
