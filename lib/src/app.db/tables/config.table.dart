import 'package:drift/drift.dart';

class ConfigTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get keyColumn => text().nullable()();
  TextColumn get valueColumn => text().nullable()();

  // Future insertItem(ItemTableData entity, int orderSl) async {
  //   await db.into(db.itemTable).insert(
  //         entity.copyWith(
  //           orderSl: Value(orderSl),
  //         ),
  //       );
  // }
}
