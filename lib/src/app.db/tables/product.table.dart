import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';

class ProductTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get id => text().nullable()();
  TextColumn get categoryId => text().nullable().named('category_id')();
  IntColumn get position => integer().nullable()();
  TextColumn get label => text().nullable()();

  TextColumn get categoryLabel => text().nullable().named('category_label')();
  TextColumn get posLabel => text().nullable().named('pos_label')();
  TextColumn get description => text().nullable()();
  TextColumn get shortdescription =>
      text().nullable().named('short_description')();

  RealColumn get price => real().nullable()();
  RealColumn get promotionPrice => real().nullable().named('promotion_price')();
  RealColumn get advancePrice => real().nullable().named('advance_price')();
  BoolColumn get enable => boolean().nullable()();

  TextColumn get warehouseLocation =>
      text().nullable().named('warehouse_location')();
  TextColumn get outletLocation => text().nullable().named('outlet_location')();
  TextColumn get rackLocation => text().nullable().named('rack_location')();
  RealColumn get weight => real().nullable()();

  RealColumn get height => real().nullable()();
  TextColumn get manufactureCountry =>
      text().nullable().named('manufacture_country')();
  DateTimeColumn get manufactureDate =>
      dateTime().nullable().named('manufacture_date')();
  DateTimeColumn get expireDate => dateTime().nullable().named('expire_date')();

  IntColumn get averageRating => integer().nullable().named('average_rating')();
  IntColumn get totalRating =>
      integer().nullable().named('total_number_of_rating')();
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
  TextColumn get barCode => text().nullable()();

  TextColumn get qrCode => text().nullable()();
  RealColumn get tax => real().nullable()();
  RealColumn get vat => real().nullable()();
  TextColumn get types => text().nullable()();

  TextColumn get tags => text().nullable()();
  TextColumn get sku => text().nullable()();
  IntColumn get inventory => integer().nullable()();
  DateTimeColumn get newFrom => dateTime().nullable().named('new_from')();

  DateTimeColumn get newTill => dateTime().nullable().named('new_till')();
  BoolColumn get isDownloadable =>
      boolean().nullable().named('is_downladable')();
  TextColumn get downloadedFiles =>
      text().nullable().named('downloaded_files')();
  RealColumn get specialPrice => real().nullable().named('special_price')();

  TextColumn get relatedProducts =>
      text().nullable().named('related_products')();
  TextColumn get crossSaleProducts =>
      text().nullable().named('cross_sale_products')();
  TextColumn get upSaleProducts =>
      text().nullable().named('up_sale_products')();
  TextColumn get files => text().nullable()();

  DateTimeColumn? get createdAt => dateTime().nullable().named('created_at')();
  TextColumn get createdBy => text().nullable().named('created_by')();
  DateTimeColumn? get updatedAt => dateTime().nullable().named('updated_at')();
  TextColumn get updatedBy => text().nullable().named('updated_by')();
  
  IntColumn get shelfLife => integer().nullable().named('shelf_life')();
  IntColumn get minimumInventory =>
      integer().nullable().named('minimum_inventory')();

  //?PRODUCT
  Future<int> insertProduct(ProductTableCompanion entity) async {
    return await db.into(db.productTable).insert(entity);
  }

  Future<List<ProductTableData>> getProducts() async {
    final products = await db.select(db.productTable).get();
    return products;
  }

  Future<List<ProductTableData>> getProductsByCategoryId(
      String categoryId) async {
    return await (db.select(db.productTable)
          ..where((tbl) => tbl.categoryId.equals(categoryId)))
        .get();
  }
}
