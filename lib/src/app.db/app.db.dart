import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pos_sq/src/app.db/tables/category.table.dart';
import 'package:pos_sq/src/app.db/tables/config.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';

import 'tables/item.table.dart';
import 'tables/product.table.dart';

part 'app.db.g.dart';

late AppDatabase db;

@DriftDatabase(tables: [
  ConfigTable,
  CategoryTable,
  OrderTable,
  ItemTable,
  ProductTable,
  PaymentDetailTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'pos.db'));
    return NativeDatabase(file);
  });
}
