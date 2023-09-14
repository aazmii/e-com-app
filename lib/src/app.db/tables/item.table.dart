import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

import 'order.table.dart';

class ItemTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get id => text().nullable()();
  TextColumn get name => text().nullable()();
  IntColumn get count => integer().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get imageUrl => text().nullable()();
  RealColumn get vat => real().nullable().named('vat_in_percentage')();

  IntColumn get orderSl => integer().nullable().references(OrderTable, #sl)();

  Stream<List<ItemTableData>> watchItems({required int orderSerial}) {
    return (db.select(db.itemTable)
          ..where((tbl) => tbl.orderSl.equals(orderSerial)))
        .watch();
  }

  Future<List<ItemTableData>> getItems({required int orderSerial}) {
    return (db.select(db.itemTable)
          ..where((tbl) => tbl.orderSl.equals(orderSerial)))
        .get();
  }

  Future<ItemTableData> getItemDataById(String id) async {
    return (db.select(db.itemTable)..where((t) => t.id.equals(id))).getSingle();
  }

  Future insertItem(ItemTableData entity, int orderSl) async {
    await db
        .into(db.itemTable)
        .insert(entity.copyWith(orderSl: Value(orderSl)));
  }

  Future removeItemById(String? id) async {
    if (id == null) return;
    return (db.delete(db.itemTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future updateQuantity(String id, int qnt) async {
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(ItemTableCompanion(count: Value(qnt)));
  }
}
