import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

class CategoryTable extends Table {
  IntColumn get sl => integer().autoIncrement().nullable()();

  TextColumn get id => text().nullable()();
  TextColumn get products => text().nullable()();
  TextColumn get images => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get label => text().nullable()();
  TextColumn get description => text().nullable()();
  BoolColumn? get isExpend => boolean().nullable()();
  IntColumn? get position => integer().nullable()();
  BoolColumn? get isEnable => boolean().nullable()();
  BoolColumn? get isIncludeMenu => boolean().nullable()();
  BoolColumn? get isIncludeLiveSales => boolean().nullable()();
  BoolColumn? get isParent => boolean().nullable()();
  BoolColumn? get isIncludeHome => boolean().nullable()();
  BoolColumn? get showInSpecialCategory => boolean().nullable()();
  BoolColumn? get showBestSaleCategory => boolean().nullable()();
  TextColumn get type => text().nullable()();
  TextColumn get code => text().nullable()();
  DateTimeColumn? get createdAt => dateTime().nullable()();
  DateTimeColumn? get updatedAt => dateTime().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get updatedBy => text().nullable()();
  TextColumn get parent => text().nullable()();
  TextColumn get children => text().nullable()();

  Future<List<CategoryTableData>> getCategories() async {
    final categories = await db.select(db.categoryTable).get();
    return categories;
  }

  Future<List<CategoryTableData>> getCategoryByParentId(String parentId) async {
    return await (db.select(db.categoryTable)
          ..where((tbl) => tbl.id.equals(parentId)))
        .get();
  }

  Stream<List<CategoryTableData>> watchCategory() {
    final something = db.select(db.categoryTable).watch();
    return something;
  }

  Future<int> insertCategory(CategoryTableCompanion entity) async {
    return await db.into(db.categoryTable).insert(entity);
  }
}
// class CategoryTable extends Table {
//   IntColumn get sl => integer().nullable().autoIncrement()();

//   TextColumn get id => text().nullable()();
//   TextColumn get label => text().nullable()();
//   TextColumn get parentId => text().nullable()();
//   TextColumn get description => text().nullable()();

//   TextColumn get children => text().nullable()();
//   TextColumn get products => text().nullable()();
//   TextColumn get type => text().nullable()();
//   TextColumn get rackLocation => text().nullable()();

//   IntColumn get position => integer().nullable()();
//   IntColumn get shelfLife => integer().nullable()();
//   IntColumn get minimumInventory => integer().nullable()();
//   BoolColumn get isEnable => boolean().nullable()();

//   BoolColumn get menu => boolean().nullable()();
//   BoolColumn get liveSales => boolean().nullable()();
//   BoolColumn get root => boolean().nullable()();
//   BoolColumn get home => boolean().nullable()();

//   BoolColumn get showInSpecialCategory => boolean().nullable()();
//   BoolColumn get showBestSaleCategory => boolean().nullable()();
//   TextColumn get tags => text().nullable()();
//   TextColumn get categoryFiles => text().nullable()();

//   DateTimeColumn get createdAt => dateTime().nullable()();
//   DateTimeColumn get updatedAt => dateTime().nullable()();
//   TextColumn get createdBy => text().nullable()();
//   TextColumn get updatedBy => text().nullable()();

//   TextColumn get warehouseLocation => text().nullable()();
//   TextColumn get outletLocation => text().nullable()();
//   TextColumn get pinnedCategory => text().nullable()();
// }
