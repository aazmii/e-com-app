import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';

import 'order.table.dart';

class ItemTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();
  TextColumn get id => text().nullable()();
  IntColumn get orderSl => integer().nullable().references(OrderTable, #sl)();
  BoolColumn get isCustomItem => boolean().nullable().named('is_custom_item')();
  TextColumn get name => text().nullable()();
  IntColumn get count => integer().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get imageUrl => text().nullable()();
  RealColumn get vat => real().nullable().named('vat_in_percentage')();

  static Stream<List<Item>> watchItems({required int orderSerial}) {
    final dataStream = (db.select(db.itemTable)
          ..where((tbl) => tbl.orderSl.equals(orderSerial)))
        .watch();
    return dataStream.map((List<ItemTableData> itemDataList) {
      final List<Item> items = itemDataList.map((itemData) {
        return Item.fromTableData(itemData);
      }).toList();
      return items;
    });
  }

  static Stream<List<Item>> watchSpecificItems({
    required int orderSerial,
    required bool watchCustomItem,
  }) {
    final dataStream = (db.select(db.itemTable)
          ..where((tbl) {
            return tbl.orderSl.equals(orderSerial) &
                tbl.isCustomItem.equals(watchCustomItem);
          }))
        .watch();

    return dataStream.map((List<ItemTableData> itemDataList) {
      final List<Item> items = itemDataList.map((itemData) {
        return Item.fromTableData(itemData);
      }).toList();
      return items;
    });
  }

  static Future<List<Item>> getItems({required int orderSerial}) async {
    return (await (db.select(db.itemTable)
              ..where((tbl) => tbl.orderSl.equals(orderSerial)))
            .get())
        .map((e) => Item.fromTableData(e))
        .toList();
  }

  static Future<Item> getItemDataById(String id) async {
    return Item.fromTableData((await (db.select(db.itemTable)
          ..where((t) => t.id.equals(id)))
        .getSingle()));
  }

  static Future insertItem(Item entity, int orderSl) async {
    return await db
        .into(db.itemTable)
        .insert(entity.toTableData().copyWith(orderSl: Value(orderSl)));
  }

  static Future removeItemById(String? id) async {
    if (id == null) return;
    return await (db.delete(db.itemTable)..where((tbl) => tbl.id.equals(id)))
        .go();
  }

  static Future removeAllByOrderId(int orderSl) async {
    await (db.delete(db.itemTable)..where((tbl) => tbl.orderSl.equals(orderSl)))
        .go();
  }

  static Future updateQuantity(String id, int qnt) async {
    return (db.update(db.itemTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(ItemTableCompanion(count: Value(qnt)));
  }
}
