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

  static Future updateDiscountAmount(int sl, double? d) async {
    if (d == null) return;
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(discountAmount: Value(d)));
  }

  static Future updateDiscountType(int sl, DiscountType discountType) async {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(discountType: Value(discountType.name)));
  }

  static Future<int> insetOrder(OrderTableCompanion entity) async {
    return await db.into(db.orderTable).insert(entity);
  }

  static Future removeOrder(int? sl) async {
    if (sl == null) return;
    return (db.delete(db.orderTable)..where((tbl) => tbl.sl.equals(sl))).go();
  }

  static Future<List<OrderTableData>> getAllOrders() async {
    return await db.select(db.orderTable).get();
  }

  static Future<OrderTableData> getOrderBySl(int sl) async {
    return await (db.select(db.orderTable)..where((tbl) => tbl.sl.equals(sl)))
        .getSingle();
  }

  static Stream<OrderTableData> watchOrdersBySl(int sl) {
    final Stream<OrderTableData> tableStream = (db.select(db.orderTable)
          ..where((tbl) => tbl.sl.equals(sl)))
        .watchSingle();

    return tableStream;
  }

  static Future updateGrossTotal(int sl, double grossTotal) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(grossTotal: Value(grossTotal)));
  }

  static Future updateVat(int sl, double vat) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(vatorgst: Value(vat)));
  }

  static Future updateNetTotal(int sl, double amount) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(netTotal: Value(amount)));
  }

  static Future updateCustomerName(int sl, String name) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(customerName: Value(name)));
  }

  static Future updateCustomerPhone(int sl, String phone) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(customerPhone: Value(phone)));
  }

  static Future updateCustomerLoyaltiCardNumber(int sl, String number) {
    return (db.update(db.orderTable)
          ..where((tbl) {
            return tbl.sl.equals(sl);
          }))
        .write(OrderTableCompanion(loyalityCard: Value(number)));
  }

  static Stream<List<OrderTableData>> watchOrders() {
    final Stream<List<OrderTableData>> dataStream =
        db.select(db.orderTable).watch();

    return dataStream;
  }
}
