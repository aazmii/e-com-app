import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

class OrderDb {
  Future<int> insetOrder(OrderTableCompanion entity) async {
    return await db.into(db.orderTable).insert(entity);
  }

  Future<List<OrderTableData>> getAllOrders() async {
    return await db.select(db.orderTable).get();
  }

  Future<OrderTableData> getOrderBySl(int sl) async {
    return await (db.select(db.orderTable)..where((tbl) => tbl.sl.equals(sl)))
        .getSingle();
  }

  Future<OrderTableData> getOrderBySavedTime(DateTime dt) async {
    return await (db.select(db.orderTable)
          ..where((tbl) => tbl.orderDateTime.equals(dt)))
        .getSingle();
  }

  Stream<OrderTableData> watchOrdersBySl(int sl) {
    final Stream<OrderTableData> tableStream = (db.select(db.orderTable)
          ..where((tbl) => tbl.sl.equals(sl)))
        .watchSingle();

    return tableStream;
  }

  // Stream<OrderTableData> watchOrdersByDateTime(DateTime dt) {
  //   final Stream<OrderTableData> tableStream = (db.select(db.orderTable)
  //         ..where((tbl) => tbl.orderDateTime.equals(dt)))
  //       .watchSingle();

  //   return tableStream;
  // }

  Stream<List<OrderTableData>> watchOrders() {
    final Stream<List<OrderTableData>> dataStream =
        db.select(db.orderTable).watch();

    // return dataStream.map((List<OrderTableData> orderDataList) {
    //   final List<Order> orders = orderDataList.map((orderData) {
    //     return Order.fromTableData(orderData);
    //   }).toList();

    //   return orders;
    // });
    return dataStream;
  }
}

class OrderTable extends Table {
  IntColumn get sl => integer().autoIncrement()();

  TextColumn get customerName => text().nullable()();
  TextColumn get customerPhone => text().nullable()();
  TextColumn get loyalityCard => text().nullable()();

  TextColumn get items => text().nullable()();
  RealColumn get subTotal => real().nullable()();
  RealColumn get grossTotal => real().nullable()();

  RealColumn get discountAmount => real().nullable()();
  TextColumn get discountType => text().nullable()();
  RealColumn get vatorgst => real().nullable()();

  RealColumn get receivedAmount => real().nullable()();
  RealColumn get netTotal => real().nullable()();
  RealColumn get returnAmount => real().nullable()();

  TextColumn get paymentDetails => text().nullable()();
  TextColumn get posId => text().nullable()();
  TextColumn get posUserId => text().nullable()();

  DateTimeColumn get orderDateTime => dateTime().nullable()();

  Future updateDiscount(int sl, double d) async {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(discountAmount: Value(d)));
  }
}

class ItemTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get id => text().nullable()();
  TextColumn get name => text().nullable()();
  IntColumn get count => integer().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get imageUrl => text().nullable()();

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
