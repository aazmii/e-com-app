import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/constants.dart';

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

  Future updateDiscountAmount(int sl, double? d) async {
    if (d == null) return;
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(discountAmount: Value(d)));
  }

  Future updateDiscountType(int sl, DiscountType discountType) async {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(discountType: Value(discountType.name)));
  }

  Future<int> insetOrder(OrderTableCompanion entity) async {
    return await db.into(db.orderTable).insert(entity);
  }

  Future removeOrder(int? sl) async {
    if (sl == null) return;
    return (db.delete(db.orderTable)..where((tbl) => tbl.sl.equals(sl))).go();
  }

  Future<List<OrderTableData>> getAllOrders() async {
    return await db.select(db.orderTable).get();
  }

  Future<OrderTableData> getOrderBySl(int sl) async {
    return await (db.select(db.orderTable)..where((tbl) => tbl.sl.equals(sl)))
        .getSingle();
  }

  Stream<OrderTableData> watchOrdersBySl(int sl) {
    final Stream<OrderTableData> tableStream = (db.select(db.orderTable)
          ..where((tbl) => tbl.sl.equals(sl)))
        .watchSingle();

    return tableStream;
  }

  Stream<List<OrderTableData>> watchOrders() {
    final Stream<List<OrderTableData>> dataStream =
        db.select(db.orderTable).watch();

    return dataStream;
  }
}
