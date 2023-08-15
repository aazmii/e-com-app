// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';

import 'package:pos_sq/src/modules/catgory.and.product/model/location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/person.dart';
import 'package:sqflite/sqflite.dart';

part 'product.ext.dart';

class Product {
  String? productId;
  String? categoryId;
  int? inventory;
  int? minimumInventory;
  String? label;

  Location? warehouseLocation;
  Location? outletLocation;
  String? rackLocation;
  String? manufactureCountry;
  String? description;
  String? posLabel;
  String? categoryLabel;
  List<Type>? types;
  String? shortDescription;

  Person? createdBy;
  Person? updatedBy;
  int? shelfLife;

  double? price;
  double? specialPrice;
  double? promotionPrice;
  double? advancedPrice;
  double? taxInPercentage;
  double? vatInPercentage;
  double? weight;
  double? height;
  double? average5PercentRating;
  double? average4PercentRating;
  double? average3PercentRating;
  double? average2PercentRating;
  double? average1PercentRating;
  double? averageRating;
  double? totalNumberOfRating;
  String? barcode;
  String? qrcode;
  List<String>? tags;
  bool? enable;
  bool? isdownloadable;
  DateTime? manufacturedDate;
  DateTime? expireDate;
  DateTime? createdAt;
  DateTime? updatedAt;
  File? dowanloadFile;
  List<String>? files;
  Product({
    this.productId,
    this.categoryId,
    this.inventory,
    this.minimumInventory,
    this.label,
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
    this.updatedBy,
    this.shelfLife,
    this.price,
    this.specialPrice,
    this.promotionPrice,
    this.advancedPrice,
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
    this.barcode,
    this.qrcode,
    this.tags,
    this.enable,
    this.isdownloadable,
    this.manufacturedDate,
    this.expireDate,
    this.createdAt,
    this.updatedAt,
    this.dowanloadFile,
    this.files,
  });

  Product copyWith({
    String? productId,
    String? categoryId,
    int? inventory,
    int? minimumInventory,
    String? label,
    String? categoryLabel,
    Location? warehouseLocation,
    Location? outletLocation,
    String? rackLocation,
    String? manufactureCountry,
    String? description,
    String? posLabel,
    List<Type>? types,
    String? shortDescription,
    Person? createdBy,
    Person? updatedBy,
    int? shelfLife,
    double? price,
    double? specialPrice,
    double? promotionPrice,
    double? advancedPrice,
    double? taxInPercentage,
    double? vatInPercentage,
    double? weight,
    double? height,
    double? average5PercentRating,
    double? average4PercentRating,
    double? average3PercentRating,
    double? average2PercentRating,
    double? average1PercentRating,
    double? averageRating,
    double? totalNumberOfRating,
    String? barcode,
    String? qrcode,
    List<String>? tags,
    bool? enable,
    bool? isdownloadable,
    DateTime? manufacturedDate,
    DateTime? expireDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    File? dowanloadFile,
    List<String>? files,
  }) {
    return Product(
      productId: productId ?? this.productId,
      categoryId: categoryId ?? this.categoryId,
      inventory: inventory ?? this.inventory,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      label: label ?? this.label,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      rackLocation: rackLocation ?? this.rackLocation,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      description: description ?? this.description,
      posLabel: posLabel ?? this.posLabel,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      types: types ?? this.types,
      shortDescription: shortDescription ?? this.shortDescription,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      shelfLife: shelfLife ?? this.shelfLife,
      price: price ?? this.price,
      specialPrice: specialPrice ?? this.specialPrice,
      promotionPrice: promotionPrice ?? this.promotionPrice,
      advancedPrice: advancedPrice ?? this.advancedPrice,
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
      barcode: barcode ?? this.barcode,
      qrcode: qrcode ?? this.qrcode,
      tags: tags ?? this.tags,
      enable: enable ?? this.enable,
      isdownloadable: isdownloadable ?? this.isdownloadable,
      manufacturedDate: manufacturedDate ?? this.manufacturedDate,
      expireDate: expireDate ?? this.expireDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dowanloadFile: dowanloadFile ?? this.dowanloadFile,
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
      'warehouseLocation': warehouseLocation?.toMap(),
      'outletLocation': outletLocation?.toMap(),
      'rackLocation': rackLocation,
      'manufactureCountry': manufactureCountry,
      'description': description,
      'posLabel': posLabel,
      'categoryLabel': categoryLabel,
      'types': null,
      'shortDescription': shortDescription,
      'createdBy': createdBy?.toMap(),
      'updatedBy': updatedBy?.toMap(),
      'shelfLife': shelfLife,
      'price': price,
      'specialPrice': specialPrice,
      'promotionPrice': promotionPrice,
      'advancedPrice': advancedPrice,
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
      'barcode': barcode,
      'qrcode': qrcode,
      'tags': tags,
      'enable': enable,
      'isdownloadable': isdownloadable,
      'manufacturedDate': manufacturedDate?.millisecondsSinceEpoch,
      'expireDate': expireDate?.millisecondsSinceEpoch,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'dowanloadFile': null,
      'files': files,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    // print(map['images']['image']);
    return Product(
      productId: map['id'] != null ? map['id'] as String : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      inventory: map['inventory'] as int?,
      minimumInventory: map['minimumInventory'] != null
          ? map['minimumInventory'] as int
          : null,
      label: map['name'] != null ? map['name'] as String : null,
      warehouseLocation: map['warehouseLocation'] != null
          ? Location.fromMap(map['warehouseLocation'] as Map<String, dynamic>)
          : null,
      outletLocation: map['outletLocation'] != null
          ? Location.fromMap(map['outletLocation'] as Map<String, dynamic>)
          : null,
      rackLocation:
          map['rackLocation'] != null ? map['rackLocation'] as String : null,
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
      createdBy: map['createdBy'] != null
          ? Person.fromMap(map['createdBy'] as Map<String, dynamic>)
          : null,
      updatedBy: map['updatedBy'] != null
          ? Person.fromMap(map['updatedBy'] as Map<String, dynamic>)
          : null,
      shelfLife: map['shelfLife'] != null ? map['shelfLife'] as int : null,
      price: map['price'] != null ? double.parse(map['price'] as String) : null,
      specialPrice:
          map['specialPrice'] != null ? map['specialPrice'] as double : null,
      promotionPrice: map['promotionPrice'] != null
          ? map['promotionPrice'] as double
          : null,
      advancedPrice:
          map['advancedPrice'] != null ? map['advancedPrice'] as double : null,
      taxInPercentage: map['taxInPercentage'] != null
          ? map['taxInPercentage'] as double
          : null,
      vatInPercentage: map['vatInPercentage'] != null
          ? map['vatInPercentage'] as double
          : null,
      weight: map['weight'] != null ? map['weight'] as double : null,
      height: map['height'] != null ? map['height'] as double : null,
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
          map['averageRating'] != null ? map['averageRating'] as double : null,
      totalNumberOfRating: map['totalNumberOfRating'] != null
          ? map['totalNumberOfRating'] as double
          : null,
      barcode: map['barcode'] != null ? map['barcode'] as String : null,
      qrcode: map['qrcode'] != null ? map['qrcode'] as String : null,
      tags: null,
      enable: map['enable'] != null ? map['enable'] as bool : null,
      isdownloadable:
          map['isdownloadable'] != null ? map['isdownloadable'] as bool : null,
      manufacturedDate: map['manufacturedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['manufacturedDate'] as int)
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
      dowanloadFile: null,
      files: ((map['images'] as List<dynamic>).map(
        (e) => e['image'] as String,
      )).toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(productId: $productId, categoryId: $categoryId, inventory: $inventory, minimumInventory: $minimumInventory, label: $label, warehouseLocation: $warehouseLocation, outletLocation: $outletLocation, rackLocation: $rackLocation, manufactureCountry: $manufactureCountry, description: $description, posLabel: $posLabel, categoryLabel: $categoryLabel, types: $types, shortDescription: $shortDescription, createdBy: $createdBy, updatedBy: $updatedBy, shelfLife: $shelfLife, price: $price, specialPrice: $specialPrice, promotionPrice: $promotionPrice, advancedPrice: $advancedPrice, taxInPercentage: $taxInPercentage, vatInPercentage: $vatInPercentage, weight: $weight, height: $height, average5PercentRating: $average5PercentRating, average4PercentRating: $average4PercentRating, average3PercentRating: $average3PercentRating, average2PercentRating: $average2PercentRating, average1PercentRating: $average1PercentRating, averageRating: $averageRating, totalNumberOfRating: $totalNumberOfRating, barcode: $barcode, qrcode: $qrcode, tags: $tags, enable: $enable, isdownloadable: $isdownloadable, manufacturedDate: $manufacturedDate, expireDate: $expireDate, createdAt: $createdAt, updatedAt: $updatedAt, dowanloadFile: $dowanloadFile, files: $files)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.productId == productId && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    return productId.hashCode;
  }
}
