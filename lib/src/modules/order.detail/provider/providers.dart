import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';

// final selectedOrderStream = StreamProvider((ref) {
//   final sl = ref.watch(orderProvider);
//   if (sl == null) return const Stream.empty();
//   return OrderTable.watchOrdersBySl(sl);
// });
final selectedOrderStream = StreamProvider<Order>((ref) {
  final sl = ref.watch(orderProvider);
  if (sl == null) return const Stream.empty();
  Stream<OrderTableData> dataStream = OrderTable.watchOrdersBySl(sl);
  return dataStream.map((OrderTableData data) => Order.fromTableData(data));
});
