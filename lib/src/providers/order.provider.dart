import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/models/order/order.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

final orderProvider =
    AsyncNotifierProvider<OrderProvider, Order>(OrderProvider.new);

class OrderProvider extends AsyncNotifier<Order> {
  @override
  Future<Order> build() async {
    final count = await LocalDB.getDbCount('orders');
    if (count! > 0) {
      return Order.fromDbMap(await LocalDB.getLastItem('orders'));
    } else {
      state = AsyncData(await getNewOrderFromDb());
      return state.value!; 
    }
  }

  void addToCart(Product? product) {
    if (product == null) return;
    final item = Item.fromProduct(product);
    state.value!.addItem(item);
  }
  void setOrder(Order selectedOrder) => state = AsyncData(selectedOrder);

  Future onNewOrder() async => state = AsyncData(await getNewOrderFromDb());
  Future<Order> getNewOrderFromDb() async {
    await Order(orderTime: DateTime.now())
        .saveInLocalDb(await LocalDB.database);
    return Order.fromDbMap(await LocalDB.getLastItem('orders'));
  }
}
