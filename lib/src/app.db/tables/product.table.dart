import 'package:drift/drift.dart';

class ProductTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get productId => text().nullable()();
  TextColumn get categoryId => text().nullable()();
  IntColumn get position => integer().nullable()();
  TextColumn get label => text().nullable()();

  TextColumn get categoryLabel => text().nullable()();
  TextColumn get posLabel => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get shortDescription => text().nullable()();

  RealColumn get price => real().nullable()();
  RealColumn get promotionPrice => real().nullable()();
  RealColumn get specialPrice => real().nullable()();
  RealColumn get advancedPrice => real().nullable()();

  BoolColumn get enable => boolean().nullable()();
  TextColumn get warehouseLocation => text().nullable()();
  TextColumn get outletLocation => text().nullable()();
  TextColumn get rackLocation => text().nullable()();

  RealColumn get weight => real().nullable()();
  RealColumn get height => real().nullable()();
  TextColumn get manufactureCountry => text().nullable()();
  DateTimeColumn get manufacturedDate => dateTime().nullable()();

  DateTimeColumn get expireDate => dateTime().nullable()();
  RealColumn get averageRating => real().nullable()();
  RealColumn get totalNumberOfRating => real().nullable()();
  RealColumn get average5PercentRating => real().nullable()();

  RealColumn get average4PercentRating => real().nullable()();
  RealColumn get average3PercentRating => real().nullable()();
  RealColumn get average2PercentRating => real().nullable()();
  RealColumn get average1PercentRating => real().nullable()();

  TextColumn get barcode => text().nullable()();
  TextColumn get qrcode => text().nullable()();
  RealColumn get taxInPercentage => real().nullable()();
  RealColumn get vatInPercentage => real().nullable()();

  TextColumn get types => text().nullable()();
  TextColumn get tags => text().nullable()();
  TextColumn get sku => text().nullable()();
  IntColumn get inventory => integer().nullable()();

  DateTimeColumn get newFrom => dateTime().nullable()();
  DateTimeColumn get newTill => dateTime().nullable()();
  BoolColumn get isDownloadable => boolean().nullable()();
  Int64Column get downloadedFile => int64().nullable()();

  TextColumn get relatedProducts => text().nullable()();
  TextColumn get crossSellProducts => text().nullable()();
  TextColumn get upSellProducts => text().nullable()();
  TextColumn get files => text().nullable()();

  DateTimeColumn get createdAt => dateTime().nullable()();
  TextColumn get createdBy => text().nullable()();
  TextColumn get updatedBy => text().nullable()();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  IntColumn get shelfLife => integer().nullable()();
  IntColumn get minimumInventory => integer().nullable()();
}
