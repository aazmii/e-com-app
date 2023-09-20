import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/constants/constants.dart';

class PaymentDetailTable extends Table {
  // IntColumn get sl => integer().autoIncrement()();

  IntColumn get id =>
      integer().nullable().autoIncrement().named('payment_detail_id')();
  IntColumn get orderId =>
      integer().nullable().references(OrderTable, #sl).named('order_id')();

  TextColumn get paymentType => text().nullable().named('payment_type')();
  //for ui
  TextColumn get digitalPaymentType =>
      text().nullable().named('digital_payment_type')();
  TextColumn get transactionDetail =>
      text().nullable().named('transaction_detail')();
  RealColumn get amount => real().nullable()();

 static Future<int> insertPayment(PaymentDetailTableCompanion entity) async {
    return await db.into(db.paymentDetailTable).insert(entity);
  }

 static Future<PaymentDetailTableData> getPaymentById(int id) async {
    return await (db.select(db.paymentDetailTable)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingle();
  }

 static Future updatePaymentMethod(
    int id, {
    PaymentType? paymentType,
    DigitalPaymentType? digitalPaymentType,
  }) async {
    return (db.update(db.paymentDetailTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      PaymentDetailTableCompanion(
        paymentType: Value(paymentType?.name),
        digitalPaymentType: Value(digitalPaymentType?.name),
      ),
    );
  }

 static Future updatePaymentAmount(
    int id, {
    double? amount,
  }) async {
    return (db.update(db.paymentDetailTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      PaymentDetailTableCompanion(amount: Value(amount)),
    );
  }

 static Future updateTransactionDetail(
    int id, {
    double? amount,
  }) async {
    return (db.update(db.paymentDetailTable)
          ..where((tbl) {
            return tbl.id.equals(id);
          }))
        .write(
      PaymentDetailTableCompanion(amount: Value(amount)),
    );
  }

 static Future deletePaymentById(int? id) async {
    if (id == null) return;
    return (db.delete(db.paymentDetailTable)..where((tbl) => tbl.id.equals(id)))
        .go();
  }

 static Future insertNewPaymentDetail(PaymentDetailTableData data) async {
    return db.into(db.paymentDetailTable).insert(data);
  }

 static Stream<List<PaymentDetailTableData>> watchPayments({required int orderSl}) {
    return (db.select(db.paymentDetailTable)
          ..where((tbl) => tbl.orderId.equals(orderSl)))
        .watch();
  }
}
