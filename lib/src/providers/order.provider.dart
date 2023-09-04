import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/models/order/order.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

final orderProvider = NotifierProvider<OrderProvider, Order>(OrderProvider.new);

class OrderProvider extends Notifier<Order> {
  @override
  Order build() => Order();

  Future addToCart(Product? product) async {
    if (product == null) return;
    final item = Item.fromProduct(product);
    final isUpdated = await state.addItem(
      item.copyWith(count: 1, price: product.price ?? 1),
    );
    // print(isUpdated);
    // if (!isUpdated) return;
    // List<Item> items = state.value?.items ?? [];
    // items.add(item);
    // state = AsyncData(state.value!.copyWith(items: items));
  }

  Future removeItemFromCart(Item item) async {
    final isUpdated = await state.removeItem(item.id!);
    // if (!isUpdated) return;
    // List<Item> items = state.value?.items ?? [];
    // items.remove(item);
    // state = AsyncData(state.value!.copyWith(items: items));
  }

  Future<void> onQuantityAdd(Item? item) async {
    if (item == null) return;

    await state.increaseQuantity(item.id!);
    // await state.value!.addItem(item);
  }

  Future<void> onQuantityRemove(Item? item) async {
    if (item == null) return;
    await state.decreaseQuantity(item);
  }

  void setOrder(Order o) => state = o;

  Future resetOrder() async {
    // return state = AsyncData(await getNewOrderFromDb());
  }

  Future<Order> getNewOrderFromDb() async {
    await Order(orderTime: DateTime.now())
        .saveInLocalDb(await LocalDB.database);

    return Order.fromDbMap(await LocalDB.getLastItem('orders'));
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
