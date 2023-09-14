import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/item.table.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

final grossStream = StreamProvider<double>((ref) {
  final sl = ref.watch(orderSlProvider);
  if (sl == null) return const Stream.empty();
  Stream<List<ItemTableData>> itemDataStream =
      ItemTable().watchItems(orderSerial: sl);

  return itemDataStream.map((List<ItemTableData> itemDataList) {
    return itemDataList
        .map((itemData) => Item.fromTableData(itemData))
        .toList()
        .fold(0.0, (sum, Item item) {
      final price = item.price ?? 0.0;
      return sum + (price) * item.count!;
    });
  });
});
