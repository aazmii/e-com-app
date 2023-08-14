import 'dart:io';

import 'package:sqflite/sqflite.dart';

part 'product.ext.dart';

class Product {
  int? id, categoryId, inventory, minimumInventory;
  String? label,
      warehouseLocation,
      outletLocation,
      rackLocation,
      manufactureCountry,
      description,
      posLabel,
      categoryLabel,
      types, //?
      shortDescription,
      createdBy,
      updatedBy,
      shelfLife;  //?

  double? price,
      specialPrice,
      promotionPrices, 
      advancedPrices,
      taxInPercentage,
      vatInPercentage,
      weight,
      height,
      average5PercentRating,
      average4PercentRating,
      average3PercentRating,
      average2PercentRating,
      average1PercentRating,
      averageRating,
      totalNumberOfRating,
      barcode,
      qrcode;
  List<String>? tags;
  bool? enable, isdownloadable;
  DateTime? manufacturedDate, expireDate, createdAt, updatedAt;
  File? dowanloaFile;
  List<String>? files; //(file path for images and videos)

// sku
// new_from
// new_till
// related_products
// cross_sell_products
// up_sell_products
}
