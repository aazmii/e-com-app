import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';

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

  Stream<List<Item>> watchItems({required int orderSerial}) {
    final dataStream = (db.select(db.itemTable)
          ..where((tbl) => tbl.orderSl.equals(orderSerial)))
        .watch();
    return dataStream.map((List<ItemTableData> itemDataList) {
      final List<Item> items = itemDataList.map((itemData) {
        return Item.fromTableData(itemData);
      }).toList();
      return items;
    });
    // return (db.select(db.itemTable)
    //       ..where((tbl) => tbl.orderSl.equals(orderSerial)))
    //     .watch();
  }

  Future<List<Item>> getItems({required int orderSerial}) async {
    return (await (db.select(db.itemTable)
              ..where((tbl) => tbl.orderSl.equals(orderSerial)))
            .get())
        .map((e) => Item.fromTableData(e))
        .toList();
  }

  Future<Item> getItemDataById(String id) async {
    return Item.fromTableData((await (db.select(db.itemTable)
          ..where((t) => t.id.equals(id)))
        .getSingle()));
  }

  Future insertItem(Item entity, int orderSl) async {
    return await db
        .into(db.itemTable)
        .insert(entity.toTableData().copyWith(orderSl: Value(orderSl)));
  }

  Future removeItemById(String? id) async {
    if (id == null) return;
    (db.delete(db.itemTable)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future updateId(int sl, String newId) async {
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(ItemTableCompanion(id: Value(newId)));
  }

  Future updateQuantity(String id, int qnt) async {
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(ItemTableCompanion(count: Value(qnt)));
  }
}
