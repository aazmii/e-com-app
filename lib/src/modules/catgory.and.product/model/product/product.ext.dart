part of 'product.dart';

extension ProductExt on Product {
  Future<bool> saveInLocalDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO product(
              id,
              category_id,
              position,
              name,
              category_label,

              pos_label,
              description,
              short_description,
              price,
              promotion_price,

              special_price,
              advanced_price,
              enable,
              warehouse_location,
              outlet_location,

              rack_location,
              weight,
              height,
              manufacture_country,
              manufactured_Date,

              expire_date,
              average_rating,
              total_number_of_rating,
              average_5_percent_rating,
              average_4_percent_rating,

              average_3_percent_rating,
              average_2_percent_rating,
              average_1_percent_rating,
              barcode,
              qrcode,

              taxInPercentage,
              vatInPercentage,
              type,
              tags,
              sku,

              inventory,
              new_from,
              new_till,
              is_downloadable,
              dowanloded_file,
              
              related_products,
              cross_sell_products,
              up_sell_products,
              files,
              created_at,
              
              created_by,
              updated_by,
              updated_at,
              shelf_life,
              minimum_inventory
            )
            VALUES(
              '$productId',
              '$categoryId',
              '$position',
              '$label',
              '$categoryLabel',

              '$posLabel',
              '$description',
              '$shortDescription',
              '$price',
              '$promotionPrice',

              '$advancedPrice',
              '$enable',
              '$warehouseLocation',
              '$outletLocation',
              '$rackLocation',

              '$weight',
              '$height',
              '$manufactureCountry',
              '$manufacturedDate',
              '$expireDate',

              '$averageRating',
              '$totalNumberOfRating',
              '$average5PercentRating',
              '$average4PercentRating',
              '$average3PercentRating'
              ,
              '$average2PercentRating',
              '$average1PercentRating',
              '$barcode',
              '$qrcode',
              '$taxInPercentage',

              '$vatInPercentage',
              '$types',
              '$tags',
              '$sku',
              '$inventory',

              '$newFrom',
              '$newTill',
              '$isDownloadable',
              '$downloadedFile',
              '$specialPrice',

              '$relatedProducts',
              '$crossSellProducts',
              '$upSellProducts',
              '$files',
              '$createdAt',

              '$createdBy',
              '$updatedAt',
              '$updatedBy',
              '$shelfLife',
              '$minimumInventory'
            )
      ''');
    } catch (e) {
      print(e);
      isSuccess = false;
    }
    return isSuccess;
  }
}
