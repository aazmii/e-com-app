import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

class ProductTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get id => text().nullable()();
  TextColumn get name => text().nullable()();
  BoolColumn get isEnable => boolean().nullable()();
  RealColumn get price => real().nullable()();

  BoolColumn get isDiscount => boolean().nullable().named('is_disoucnt')();
  RealColumn get discountPrice => real().nullable().named('disoucnt_price')();
  RealColumn get vatPercentage => real().nullable().named('vatpercentage')();
  TextColumn get images => text().nullable()();

  TextColumn get categoryId => text().nullable().named('category_id')();
  TextColumn get categoryLabel => text().nullable().named('category_label')();
  TextColumn get description => text().nullable()();
  TextColumn get shortDescription =>
      text().nullable().named('short_description')();

  IntColumn get position => integer().nullable()();
  IntColumn get averageRating => integer().nullable().named('average_rating')();
  IntColumn get totalRating => integer().nullable().named('total_rating')();
  RealColumn get average5PercentRating =>
      real().nullable().named('average_5_percent_rating')();

  RealColumn get average4PercentRating =>
      real().nullable().named('average_4_percent_rating')();
  RealColumn get average3PercentRating =>
      real().nullable().named('average_3_percent_rating')();
  RealColumn get average2PercentRating =>
      real().nullable().named('average_2_percent_rating')();
  RealColumn get average1PercentRating =>
      real().nullable().named('average_1_percent_rating')();

  //?PRODUCT
  Future<int> insertProduct(ProductTableCompanion entity) async {
    return await db.into(db.productTable).insert(entity);
  }

  Future<List<ProductTableData>> getProducts() async {
    final products = await db.select(db.productTable).get();
    return products;
  }

  Future<List<ProductTableData>> getProductByCategoryId(
      String categoryId) async {
    return await (db.select(db.productTable)
          ..where((tbl) => tbl.categoryId.equals(categoryId)))
        .get();
  }
}
