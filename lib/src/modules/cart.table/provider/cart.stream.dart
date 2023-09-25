import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';

final allItemStream = StreamProvider<List<Item>>((ref) {
  final sl = ref.watch(orderProvider);
  if (sl == null) return const Stream.empty();
  return ItemTable.watchItems(
    orderSerial: sl,
  );
});
final defaultItemStream = StreamProvider<List<Item>>((ref) {
  final sl = ref.watch(orderProvider);
  if (sl == null) return const Stream.empty();
  return ItemTable.watchSpecificItems(
    orderSerial: sl,
    watchCustomItem: false,
  );
});

final customItemStream = StreamProvider<List<Item>>((ref) {
  final sl = ref.watch(orderProvider);
  if (sl == null) return const Stream.empty();
  return ItemTable.watchSpecificItems(
    orderSerial: sl,
    watchCustomItem: true,
  );
});
