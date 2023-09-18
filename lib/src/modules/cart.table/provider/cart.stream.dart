import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

final cartStream = StreamProvider<List<Item>>((ref) {
  final sl = ref.watch(orderSlProvider);
  if (sl == null) return const Stream.empty();
  return ItemTable().watchItems(orderSerial: sl);

  // return itemDataStream.map((List<ItemTableData> itemDataList) {
  //   final List<Item> items = itemDataList.map((itemData) {
  //     return Item.fromTableData(itemData);
  //   }).toList();
  //   return items;
  // });
});
