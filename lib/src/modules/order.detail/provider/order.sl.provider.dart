import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product_.dart';

final orderSlProvider =
    NotifierProvider<OrderProvider, int?>(OrderProvider.new);

class OrderProvider extends Notifier<int?> {
  @override
  int? build() => null;

  void set(int sl) => state = sl;

  Future onItemPress(Product? product) async {
    ItemTable().getItems(orderSerial: state!);
    if (product == null) return;

    // print(await ItemDb().getItems(orderSerial: state!));
    // final isInCart = (await ItemDb().getItems(orderSerial: state!))
    //     .contains(product.toTableData());
    // print(isInCart);

    // print(Item.fromProduct(product));

    // await ItemDb().insertItem(
    //     Item.fromProduct(product).copyWith(count: 1).toTableData(), state!);
  }

  Future removeItemFromCart(Item item) async {}

  Future<void> onQuantityAdd(Item? item) async {
    if (item == null) return;
  }

  Future<void> onQuantityRemove(Item? item) async {}

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
