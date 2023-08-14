import 'package:pos_sq/src/modules/catgory.and.product/model/product/created.by.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/cross.sell.products.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/dowanload.file.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/outlet.location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/rack.location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/related.products.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/up.sell.products.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/updated.by.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/warehouse_location.dart';
import 'package:sqflite/sqflite.dart';

part 'product.ext.dart';

class Product {
  Type? type;
  WarehouseLocation? warehouseLocation;
  OutletLocation? outletLocation;
  RackLocation? rackLocation;
  List<DowanloadFile>? dowanloaFile;
  RelatedProducts? relatedProducts;
  CrossSellProducts? crossSellProducts;
  UpSellProducts? upSellProducts;
  CreatedBy? createdBy;
  UpdatedBy? updatedBy;

  int? position,
      id,
      inventory,
      totalNumberOfRating,
      minimumInventory,
      shelfLife;
  String? categoryLabel,
      label,
      posLabel,
      categoryId,
      sku,
      manufactureCountry,
      description,
      shortDescription,
      barcode,
      qrcode;

  double? price,
      tax,
      vat,
      weight,
      height,
      specialPrice,
      promotionPrice,
      advancedPrice,
      average5PercentRating,
      average4PercentRating,
      average3PercentRating,
      average2PercentRating,
      average1PercentRating,
      averageRating;
  List<String>? tags;
  bool? enable, isdownloadable;
  DateTime? manufacturedDate,
      expireDate,
      createdAt,
      updatedAt,
      newFrom,
      newTill;

  List<String>? files; //(file path for images and videos)

  static createTable(Database db) async {
    await db.execute('''
          CREATE TABLE product (
           sl INTEGER PRIMARY KEY AUTOINCREMENT,

           id TEXT,
           categoryId TEXT,
           position INTEGER,
           label TEXT,
           categoryLabel TEXT,

           posLabel TEXT,
           description TEXT,
           shortDescription TEXT,
           price DOUBLE,
           promotionPrice DOUBLE,

           advancedPrice DOUBLE,
           enable BOOLEAN,
           warehouseLocation JSON,
           outletLocation JSON,
           rackLocation JSON,

           weight DOUBLE,
           height DOUBLE,
           manufactureCountry TEXT,
           manufacturedDate TIMESTAMP,
           expireDate TIMESTAMP,

           averageRating DOUBLE,
           totalNumberOfRating INTEGER,
           average5PercentRating DOUBLE,
           average4PercentRating DOUBLE,
           average3PercentRating DOUBLE,

           average2PercentRating DOUBLE,
           average1PercentRating DOUBLE,
           barcode TEXT,
           qrcode TEXT,
           tax DOUBLE,

           vat DOUBLE,
           type JSON,
           tags TEXT[],
           sku TEXT,
           inventory INTEGER,

           newFrom TIMESTAMP,
           newTill TIMESTAMP,
           isdownloadable BOOLEAN,
           dowanloaFile JSON[],
           specialPrice DOUBLE,

           relatedProducts JSON,
           crossSellProducts JSON,
           upSellProducts JSON,
           files TEXT[],
           createdAt TIMESTAMP,

           createdBy JSON,
           updatedAt TIMESTAMP,
           updatedBy JSON,
           shelfLife INTEGER,
           minimumInventory INTEGER
          )
    ''');
  }
}
