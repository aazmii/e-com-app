import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

final selectedOrderStream = StreamProvider((ref) {
  final sl = ref.watch(orderSlProvider);
  if (sl == null) return const Stream.empty();
  return OrderTable().watchOrdersBySl(sl);
});
