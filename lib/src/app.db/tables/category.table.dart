import 'package:drift/drift.dart';

class CategoryTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get id => text().nullable()();
  TextColumn get label => text().nullable()();
  TextColumn get parentId => text().nullable()();
  TextColumn get description => text().nullable()();

  TextColumn get children => text().nullable()();
  TextColumn get products => text().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get rackLocation => text().nullable()();

  IntColumn get position => integer().nullable()();
  IntColumn get shelfLife => integer().nullable()();
  IntColumn get minimumInventory => integer().nullable()();
  BoolColumn get isEnable => boolean().nullable()();

  BoolColumn get menu => boolean().nullable()();
  BoolColumn get liveSales => boolean().nullable()();
  BoolColumn get root => boolean().nullable()();
  BoolColumn get home => boolean().nullable()();

  BoolColumn get showInSpecialCategory => boolean().nullable()();
  BoolColumn get showBestSaleCategory => boolean().nullable()();
  TextColumn get tags => text().nullable()();
  TextColumn get categoryFiles => text().nullable()();

  DateTimeColumn get createdAt => dateTime().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get updatedBy => text().nullable()();

  TextColumn get warehouseLocation => text().nullable()();
  TextColumn get outletLocation => text().nullable()();
  TextColumn get pinnedCategory => text().nullable()();
}
