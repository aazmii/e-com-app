import 'package:drift/drift.dart';

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
}
