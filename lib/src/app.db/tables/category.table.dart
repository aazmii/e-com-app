import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

class CategoryTable extends Table {
  IntColumn get sl => integer().autoIncrement().nullable()();

  TextColumn get id => text().nullable()();
  TextColumn get label => text().nullable()();
  TextColumn get parentId => text().nullable().named('parent_id')();
  BoolColumn get menu => boolean().nullable()();
  TextColumn get description => text().nullable()();
  IntColumn get position => integer().nullable()();
  IntColumn get enable => integer().nullable()();

  BoolColumn get liveSales => boolean().nullable().named('live_sales')();
  BoolColumn get root => boolean().nullable()();
  BoolColumn get home => boolean().nullable()();
  BoolColumn get specialCategory =>
      boolean().nullable().named('special_category')();
  BoolColumn get bestSellCategory =>
      boolean().nullable().named('best_sale_category')();
  TextColumn get type => text().nullable()();
  TextColumn get tags => text().nullable()();
  TextColumn get categoryFiles => text().nullable().named('category_files')();

  DateTimeColumn? get createdAt => dateTime().nullable().named('created_at')();
  TextColumn get createdBy => text().nullable().named('created_by')();
  DateTimeColumn? get updatedAt => dateTime().nullable().named('updated_at')();
  TextColumn get updatedBy => text().nullable().named('updated_by')();
  IntColumn get shelfLife => integer().nullable().named('shelf_life')();
  IntColumn get minimumInventory =>
      integer().nullable().named('minimum_inventory')();

  TextColumn get warehouseLocation =>
      text().nullable().named('warehouse_location')();
  TextColumn get outletLocation => text().named('outlet_location').nullable()();
  TextColumn get rackLocation => text().nullable().named('rack_location')();

  static Future<List<CategoryTableData>> getCategories() async {
    final categories = await db.select(db.categoryTable).get();
    return categories;
  }

  static Future<List<CategoryTableData>> getCategoryByParentId(
      String parentId) async {
    return await (db.select(db.categoryTable)
          ..where((tbl) => tbl.id.equals(parentId)))
        .get();
  }

  static Stream<List<CategoryTableData>> watchCategory() {
    final something = db.select(db.categoryTable).watch();
    return something;
  }

  static Future<int> insertCategory(CategoryTableCompanion entity) async {
    return await db.into(db.categoryTable).insert(entity);
  }
}
