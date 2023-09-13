import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';

class PaymentDetailTable extends Table {
  // IntColumn get sl => integer().autoIncrement()();

  IntColumn get id =>
      integer().nullable().autoIncrement().named('payment_detail_id')();
  IntColumn get orderId =>
      integer().nullable().references(OrderTable, #sl).named('order_id')();

  TextColumn get paymentType => text().nullable().named('payment_type')();
  TextColumn get transactionDetail =>
      text().nullable().named('transaction_detail')();
  RealColumn get amount => real().nullable()();
}
