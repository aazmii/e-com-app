part of 'product.dart';

extension ProductExt on Product {
  createTable(Database db) async {
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
