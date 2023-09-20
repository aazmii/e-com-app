import 'dart:convert';
import 'dart:io';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/image.model.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/location.dart';

class Product {
  int? sl;
  String? productId;
  String? categoryId;
  int? position;
  String? label;
  String? categoryLabel;

  String? posLabel;
  String? description;
  String? shortDescription;
  double? price;
  double? promotionPrice;

  double? specialPrice;
  double? advancePrice;
  bool? enable;
  Location? warehouseLocation;
  Location? outletLocation;

  String? rackLocation;
  double? weight;
  double? height;
  String? manufactureCountry;
  DateTime? manufactureDate;

  DateTime? expireDate;
  int? averageRating;
  int? totalNumberOfRating;
  double? average5PercentRating;
  double? average4PercentRating;

  double? average3PercentRating;
  double? average2PercentRating;
  double? average1PercentRating;
  String? barCode;
  String? qrCode;

  double? taxInPercentage;
  double? vatInPercentage;
  List<Type>? types;
  List<String>? tags;
  String? sku;

  int? inventory;
  DateTime? newFrom;
  DateTime? newTill;
  bool? isDownloadable;
  File? downloadedFiles;

  List<Product>? relatedProducts;
  List<Product>? crossSaleProducts;
  List<Product>? upSaleProducts;
  List<ImageModel>? files;
  DateTime? createdAt;

  String? createdBy;
  String? updatedBy;
  DateTime? updatedAt;
  int? shelfLife;
  int? minimumInventory;

  Product({
    this.sl,
    this.productId,
    this.categoryId,
    this.inventory,
    this.minimumInventory,
    this.relatedProducts,
    this.crossSaleProducts,
    this.upSaleProducts,
    this.label,
    this.newFrom,
    this.newTill,
    this.isDownloadable,
    this.downloadedFiles,
    this.position,
    this.categoryLabel,
    this.warehouseLocation,
    this.outletLocation,
    this.rackLocation,
    this.manufactureCountry,
    this.description,
    this.posLabel,
    this.types,
    this.shortDescription,
    this.createdBy,
    this.sku,
    this.updatedBy,
    this.shelfLife,
    this.price,
    this.specialPrice,
    this.promotionPrice,
    this.advancePrice,
    this.taxInPercentage,
    this.vatInPercentage,
    this.weight,
    this.height,
    this.average5PercentRating,
    this.average4PercentRating,
    this.average3PercentRating,
    this.average2PercentRating,
    this.average1PercentRating,
    this.averageRating,
    this.totalNumberOfRating,
    this.barCode,
    this.qrCode,
    this.tags,
    this.enable,
    this.manufactureDate,
    this.expireDate,
    this.createdAt,
    this.updatedAt,
    this.files,
  });

  Product copyWith({
    int? sl,
    String? productId,
    String? categoryId,
    int? inventory,
    int? minimumInventory,
    int? position,
    String? label,
    String? categoryLabel,
    List<Product>? relatedProducts,
    List<Product>? crossSaleProducts,
    List<Product>? upSaleProducts,
    Location? warehouseLocation,
    Location? outletLocation,
    String? rackLocation,
    String? manufactureCountry,
    String? description,
    String? posLabel,
    String? sku,
    List<Type>? types,
    String? shortDescription,
    String? createdBy,
    String? updatedBy,
    int? shelfLife,
    double? price,
    double? specialPrice,
    double? promotionPrice,
    double? advancePrice,
    double? taxInPercentage,
    double? vatInPercentage,
    double? weight,
    double? height,
    double? average5PercentRating,
    double? average4PercentRating,
    double? average3PercentRating,
    double? average2PercentRating,
    double? average1PercentRating,
    int? averageRating,
    int? totalNumberOfRating,
    String? barCode,
    String? qrCode,
    List<String>? tags,
    bool? enable,
    bool? isDownloadable,
    DateTime? manufactureDate,
    DateTime? expireDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    File? downloadedFiles,
    List<ImageModel>? files,
  }) {
    return Product(
      sl: sl ?? this.sl,
      productId: productId ?? this.productId,
      categoryId: categoryId ?? this.categoryId,
      inventory: inventory ?? this.inventory,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      label: label ?? this.label,
      crossSaleProducts: crossSaleProducts ?? this.crossSaleProducts,
      upSaleProducts: upSaleProducts ?? this.upSaleProducts,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      position: position ?? this.position,
      rackLocation: rackLocation ?? this.rackLocation,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      description: description ?? this.description,
      posLabel: posLabel ?? this.posLabel,
      sku: sku ?? this.sku,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      types: types ?? this.types,
      shortDescription: shortDescription ?? this.shortDescription,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      shelfLife: shelfLife ?? this.shelfLife,
      price: price ?? this.price,
      specialPrice: specialPrice ?? this.specialPrice,
      promotionPrice: promotionPrice ?? this.promotionPrice,
      advancePrice: advancePrice ?? this.advancePrice,
      taxInPercentage: taxInPercentage ?? this.taxInPercentage,
      vatInPercentage: vatInPercentage ?? this.vatInPercentage,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      average5PercentRating:
          average5PercentRating ?? this.average5PercentRating,
      average4PercentRating:
          average4PercentRating ?? this.average4PercentRating,
      average3PercentRating:
          average3PercentRating ?? this.average3PercentRating,
      average2PercentRating:
          average2PercentRating ?? this.average2PercentRating,
      average1PercentRating:
          average1PercentRating ?? this.average1PercentRating,
      averageRating: averageRating ?? this.averageRating,
      totalNumberOfRating: totalNumberOfRating ?? this.totalNumberOfRating,
      barCode: barCode ?? this.barCode,
      qrCode: qrCode ?? this.qrCode,
      tags: tags ?? this.tags,
      enable: enable ?? this.enable,
      isDownloadable: isDownloadable ?? this.isDownloadable,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      expireDate: expireDate ?? this.expireDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      downloadedFiles: downloadedFiles ?? this.downloadedFiles,
      files: files ?? this.files,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'categoryId': categoryId,
      'inventory': inventory,
      'minimumInventory': minimumInventory,
      'label': label,
      'position': position,
      'relatedProducts': relatedProducts,
      'crollSaleProducts': crossSaleProducts,
      'upSaleProducts': upSaleProducts,
      'warehouseLocation': warehouseLocation?.toJson(),
      'outletLocation': outletLocation?.toJson(),
      'rackLocation': rackLocation,
      'manufactureCountry': manufactureCountry,
      'description': description,
      'posLabel': posLabel,
      'sku': sku,
      'categoryLabel': categoryLabel,
      'types': null,
      'shortDescription': shortDescription,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'shelfLife': shelfLife,
      'price': price,
      'specialPrice': specialPrice,
      'promotionPrice': promotionPrice,
      'advancePrice': advancePrice,
      'taxInPercentage': taxInPercentage,
      'vatInPercentage': vatInPercentage,
      'weight': weight,
      'height': height,
      'average5PercentRating': average5PercentRating,
      'average4PercentRating': average4PercentRating,
      'average3PercentRating': average3PercentRating,
      'average2PercentRating': average2PercentRating,
      'average1PercentRating': average1PercentRating,
      'averageRating': averageRating,
      'totalNumberOfRating': totalNumberOfRating,
      'barCode': barCode,
      'qrCode': qrCode,
      'tags': tags,
      'enable': enable,
      'isDownloadable': isDownloadable,
      'manufactureDate': manufactureDate?.millisecondsSinceEpoch,
      'expireDate': expireDate?.millisecondsSinceEpoch,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'dowanloadFile': null,
      'files': files,
    };
  }

  static Product fromMap(Map<String, dynamic> map) {
    List<ImageModel> images = [];
    for (var e in (map['images'] as List)) {
      images.add(ImageModel.fromMap(e));
    }
    final product = Product(
      productId: map['id'] != null ? map['id'] as String : null,
      categoryId: map['category_id'],
      inventory: null,
      minimumInventory: null,
      label: map['name'] != null ? map['name'] as String : null,
      position: null,
      relatedProducts: null,
      crossSaleProducts: null,
      upSaleProducts: null,
      warehouseLocation: null,
      outletLocation: map['outletLocation'] != null
          ? Location.fromMap(map['outletLocation'] as Map<String, dynamic>)
          : null,
      rackLocation:
          map['rackLocation'] != null ? map['rackLocation'] as String : null,
      sku: map['sku'] != null ? map['sku'] as String : null,
      manufactureCountry: map['manufactureCountry'] != null
          ? map['manufactureCountry'] as String
          : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      posLabel: map['posLabel'] != null ? map['posLabel'] as String : null,
      categoryLabel:
          map['categoryLabel'] != null ? map['categoryLabel'] as String : null,
      types: null,
      shortDescription: map['shortDescription'] != null
          ? map['shortDescription'] as String
          : null,
      createdBy: map['createdBy'],
      updatedBy: map['updatedBy'],
      shelfLife: map['shelfLife'] != null ? map['shelfLife'] as int : null,
      price: map['price'] != null ? double.parse(map['price']) : null,
      specialPrice: null,
      promotionPrice: map['promotionPrice'] != null
          ? map['promotionPrice'] as double
          : null,
      advancePrice:
          map['advancePrice'] != null ? map['advancePrice'] as double : null,
      taxInPercentage: null,
      vatInPercentage: map['vatpercentage'] != null
          ? double.parse(map['vatpercentage'])
          : null,
      weight: map['weight'] != null ? double.tryParse(map['weight']) : null,
      height: map['height'] != null ? double.tryParse(map['height']) : null,
      average5PercentRating: map['average5PercentRating'] != null
          ? map['average5PercentRating'] as double
          : null,
      average4PercentRating: map['average4PercentRating'] != null
          ? map['average4PercentRating'] as double
          : null,
      average3PercentRating: map['average3PercentRating'] != null
          ? map['average3PercentRating'] as double
          : null,
      average2PercentRating: map['average2PercentRating'] != null
          ? map['average2PercentRating'] as double
          : null,
      average1PercentRating: map['average1PercentRating'] != null
          ? map['average1PercentRating'] as double
          : null,
      averageRating:
          map['averageRating'] != null ? map['averageRating'] as int : null,
      totalNumberOfRating: map['totalNumberOfRating'] != null
          ? map['totalNumberOfRating'] as int
          : null,
      barCode: map['barCode'] != null ? map['barCode'] as String : null,
      qrCode: map['qrCode'] != null ? map['qrCode'] as String : null,
      tags: null,
      enable: null,
      // enable: map['enable'] != null ? map['enable'] as bool : null,
      isDownloadable:
          map['isdownloadable'] != null ? map['isdownloadable'] as bool : null,
      manufactureDate: map['manufactureDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['manufactureDate'] as int)
          : null,
      expireDate: map['expireDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['expireDate'] as int)
          : null,
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      downloadedFiles: null,
      files: images,
    );
    return product;
  }

  static Product fromTableData(ProductTableData p) {
    return Product(
      productId: p.id,
      categoryId: p.categoryId,
      position: p.position,
      label: p.label,
      categoryLabel: p.categoryLabel,
      posLabel: p.posLabel,
      description: p.description,
      shortDescription: p.shortdescription,
      price: p.price ?? 0.00,
      promotionPrice: p.promotionPrice,
      advancePrice: p.advancePrice,
      enable: p.enable,
      warehouseLocation: p.warehouseLocation != null
          ? Location.fromJson(jsonDecode(p.warehouseLocation!))
          : null,
      outletLocation: p.outletLocation != null
          ? Location.fromJson(jsonDecode(p.outletLocation!))
          : null,
      rackLocation: p.rackLocation,
      weight: p.weight,
      height: p.height,
      manufactureCountry: p.manufactureCountry,
      manufactureDate: p.manufactureDate,
      expireDate: p.expireDate,
      averageRating: p.averageRating,
      totalNumberOfRating: p.totalRating,
      average5PercentRating: p.average5PercentRating,
      average4PercentRating: p.average4PercentRating,
      average3PercentRating: p.average3PercentRating,
      average2PercentRating: p.average2PercentRating,
      average1PercentRating: p.average1PercentRating,
      barCode: p.barCode,
      qrCode: p.qrCode,
      taxInPercentage: p.tax,
      vatInPercentage: p.vat,
      types: p.types != null ? jsonDecode(p.types!) : null,
      tags: p.types != null ? jsonDecode(p.tags!) : null,
      sku: p.sku,
      inventory: p.inventory,
      newFrom: p.newFrom,
      newTill: p.newTill,
      isDownloadable: p.isDownloadable,
      downloadedFiles:
          p.downloadedFiles != null ? jsonDecode(p.downloadedFiles!) : null,
      specialPrice: p.specialPrice,
      relatedProducts:
          p.relatedProducts != null ? jsonDecode(p.relatedProducts!) : null,
      crossSaleProducts:
          p.crossSaleProducts != null ? jsonDecode(p.crossSaleProducts!) : null,
      upSaleProducts:
          p.upSaleProducts != null ? jsonDecode(p.upSaleProducts!) : null,
      files: p.files!.isNotEmpty
          ? (jsonDecode(p.files!) as List)
              .map((e) => ImageModel.fromJson(e))
              .toList()
          : null,
      createdAt: p.createdAt,
      createdBy: p.createdBy,
      updatedAt: p.updatedAt,
      updatedBy: p.updatedBy,
      shelfLife: p.shelfLife,
      minimumInventory: p.minimumInventory,
    );
  }

  ProductTableData toTableData() {
    return ProductTableData(
      id: productId,
      categoryId: categoryId,
      position: position,
      label: label,
      categoryLabel: categoryLabel,
      posLabel: posLabel,
      description: description,
      shortdescription: shortDescription,
      price: price ?? 0.00,
      promotionPrice: promotionPrice,
      advancePrice: advancePrice,
      enable: enable,
      warehouseLocation: warehouseLocation != null
          ? Location.fromJson(jsonEncode(warehouseLocation!))
          : null,
      outletLocation: outletLocation != null
          ? Location.fromJson(jsonEncode(outletLocation!))
          : null,
      rackLocation: rackLocation,
      weight: weight,
      height: height,
      manufactureCountry: manufactureCountry,
      manufactureDate: manufactureDate,
      expireDate: expireDate,
      averageRating: averageRating,
      totalRating: totalNumberOfRating,
      average5PercentRating: average5PercentRating,
      average4PercentRating: average4PercentRating,
      average3PercentRating: average3PercentRating,
      average2PercentRating: average2PercentRating,
      average1PercentRating: average1PercentRating,
      barCode: barCode,
      qrCode: qrCode,
      tax: taxInPercentage,
      vat: vatInPercentage,
      types: types != null ? jsonEncode(types!) : null,
      tags: types != null ? jsonEncode(tags!) : null,
      sku: sku,
      inventory: inventory,
      newFrom: newFrom,
      newTill: newTill,
      isDownloadable: isDownloadable,
      downloadedFiles: null,
      specialPrice: specialPrice,
      relatedProducts:
          relatedProducts != null ? jsonEncode(relatedProducts!) : null,
      crossSaleProducts:
          crossSaleProducts != null ? jsonEncode(crossSaleProducts!) : null,
      upSaleProducts:
          upSaleProducts != null ? jsonEncode(upSaleProducts!) : null,
      files: files != null ? jsonEncode(files!) : null,
      createdAt: createdAt,
      createdBy: createdBy,
      updatedAt: updatedAt,
      updatedBy: updatedBy,
      shelfLife: shelfLife,
      minimumInventory: minimumInventory,
    );
  }

  String toJson() => json.encode(toMap());

  static Product fromJson(String source) {
    return Product.fromMap(json.decode(source) as Map<String, dynamic>);
  }

  @override
  String toString() {
    return 'Product(productId: $productId, categoryId: $categoryId, inventory: $inventory, minimumInventory: $minimumInventory, label: $label, warehouseLocation: $warehouseLocation, outletLocation: $outletLocation, rackLocation: $rackLocation, manufactureCountry: $manufactureCountry, description: $description, posLabel: $posLabel, categoryLabel: $categoryLabel, types: $types, shortDescription: $shortDescription, createdBy: $createdBy, updatedBy: $updatedBy, shelfLife: $shelfLife, price: $price, specialPrice: $specialPrice, promotionPrice: $promotionPrice, advancePrice: $advancePrice, taxInPercentage: $taxInPercentage, vatInPercentage: $vatInPercentage, weight: $weight, height: $height, average5PercentRating: $average5PercentRating, average4PercentRating: $average4PercentRating, average3PercentRating: $average3PercentRating, average2PercentRating: $average2PercentRating, average1PercentRating: $average1PercentRating, averageRating: $averageRating, totalNumberOfRating: $totalNumberOfRating, barCode: $barCode, qrCode: $qrCode, tags: $tags, enable: $enable, isdownloadable: $isDownloadable, manufactureDate: $manufactureDate, expireDate: $expireDate, createdAt: $createdAt, updatedAt: $updatedAt, dowanloadFile: $downloadedFiles, files: $files)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.productId == productId;
  }

  @override
  int get hashCode {
    return productId.hashCode;
  }
}
