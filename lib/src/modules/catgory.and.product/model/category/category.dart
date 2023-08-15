// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pos_sq/src/modules/catgory.and.product/model/location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/person.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:sqflite/sqflite.dart';

part 'category.ext.dart';

class Category {
  String? id;
  String? label;
  String? parentId;
  String? description;

  List<Category>? children;
  List<Product>? products;

  String? type;
  String? rackLocation;
  int? position;
  int? shelfLife;

  int? minimumInventory;
  bool? enable;
  bool? menu;
  bool? liveSales;

  bool? root;
  bool? home;
  bool? specialCategory;
  bool? bestSaleCategory;

  List<String>? tags;
  List<String>? categoryFiles;
  DateTime? createdAt;

  DateTime? updatedAt;
  Person? createdBy;
  Person? updatedBy;

  Location? warehouseLocation;
  Location? outletLocation;
  Category({
    this.id,
    this.label,
    this.parentId,
    this.description,
    this.children,
    this.products,
    this.type,
    this.rackLocation,
    this.position,
    this.shelfLife,
    this.minimumInventory,
    this.enable,
    this.menu,
    this.liveSales,
    this.root,
    this.home,
    this.specialCategory,
    this.bestSaleCategory,
    this.tags,
    this.categoryFiles,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.warehouseLocation,
    this.outletLocation,
  });

  Category copyWith({
    String? id,
    String? label,
    String? parentId,
    String? description,
    List<Category>? children,
    List<Product>? products,
    String? type,
    String? rackLocation,
    int? position,
    int? shelfLife,
    int? minimumInventory,
    bool? enable,
    bool? menu,
    bool? liveSales,
    bool? root,
    bool? home,
    bool? specialCategory,
    bool? bestSaleCategory,
    List<String>? tags,
    List<String>? categoryFiles,
    DateTime? createdAt,
    DateTime? updatedAt,
    Person? createdBy,
    Person? updatedBy,
    Location? warehouseLocation,
    Location? outletLocation,
  }) {
    return Category(
      id: id ?? this.id,
      label: label ?? this.label,
      parentId: parentId ?? this.parentId,
      description: description ?? this.description,
      children: children ?? this.children,
      products: products ?? this.products,
      type: type ?? this.type,
      rackLocation: rackLocation ?? this.rackLocation,
      position: position ?? this.position,
      shelfLife: shelfLife ?? this.shelfLife,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      enable: enable ?? this.enable,
      menu: menu ?? this.menu,
      liveSales: liveSales ?? this.liveSales,
      root: root ?? this.root,
      home: home ?? this.home,
      specialCategory: specialCategory ?? this.specialCategory,
      bestSaleCategory: bestSaleCategory ?? this.bestSaleCategory,
      tags: tags ?? this.tags,
      categoryFiles: categoryFiles ?? this.categoryFiles,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'parentId': parentId,
      'description': description,
      'children': children?.map((x) => x.toMap()).toList(),
      'products': products!.map((x) => x.toMap()).toList(),
      'type': type,
      'rackLocation': rackLocation,
      'position': position,
      'shelfLife': shelfLife,
      'minimumInventory': minimumInventory,
      'enable': enable,
      'menu': menu,
      'liveSales': liveSales,
      'root': root,
      'home': home,
      'specialCategory': specialCategory,
      'bestSaleCategory': bestSaleCategory,
      'tags': tags,
      'categoryFiles': categoryFiles,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'createdBy': createdBy?.toMap(),
      'updatedBy': updatedBy?.toMap(),
      'warehouseLocation': warehouseLocation?.toMap(),
      'outletLocation': outletLocation?.toMap(),
    };
  }

  static Category fromMap(Map<String, dynamic> map) {
    final category = Category(
      id: map['id'] != null ? map['id'] as String? : null,
      label: map['label'] != null ? map['label'] as String : null,
      parentId: map['parentId'] != null ? map['parentId'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      children: map['children'] != null
          ? (map['children'] as List<dynamic>)
              .map((e) => Category.fromJson(e))
              .toList()
          : null,
      products: map['products'] != null
          ? (map['products'] as List<dynamic>)
              .map((e) => Product.fromMap(e))
              .toList()
          : null,
      type: map['type'] != null ? map['type'] as String : null,
      rackLocation:
          map['rackLocation'] != null ? map['rackLocation'] as String : null,
      position: map['position'] != null ? map['position'] as int : null,
      shelfLife: map['shelfLife'] != null ? map['shelfLife'] as int : null,
      minimumInventory: map['minimumInventory'] != null
          ? map['minimumInventory'] as int
          : null,
      enable: map['enable'] != null ? map['enable'] as bool : null,
      menu: map['menu'] != null ? map['menu'] as bool : null,
      liveSales: map['liveSales'] != null ? map['liveSales'] as bool : null,
      root: map['root'] != null ? map['root'] as bool : null,
      home: map['home'] != null ? map['home'] as bool : null,
      specialCategory: map['specialCategory'] != null
          ? map['specialCategory'] as bool
          : null,
      bestSaleCategory: map['bestSaleCategory'] != null
          ? map['bestSaleCategory'] as bool
          : null,
      tags: null,
      categoryFiles: null,
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      createdBy: map['createdBy'] != null
          ? Person.fromMap(map['createdBy'] as Map<String, dynamic>)
          : null,
      updatedBy: map['updatedBy'] != null
          ? Person.fromMap(map['updatedBy'] as Map<String, dynamic>)
          : null,
      warehouseLocation: map['warehouseLocation'] != null
          ? Location.fromMap(map['warehouseLocation'] as Map<String, dynamic>)
          : null,
      outletLocation: map['outletLocation'] != null
          ? Location.fromMap(map['outletLocation'] as Map<String, dynamic>)
          : null,
    );
    return category;
  }

  String toJson() => json.encode(toMap());

  static Category fromJson(dynamic source) => Category.fromMap(source);

  @override
  String toString() {
    return 'Category(id: $id, label: $label, parentId: $parentId, description: $description, children: $children, products: $products, type: $type, rackLocation: $rackLocation, position: $position, shelfLife: $shelfLife, minimumInventory: $minimumInventory, enable: $enable, menu: $menu, liveSales: $liveSales, root: $root, home: $home, specialCategory: $specialCategory, bestSaleCategory: $bestSaleCategory, tags: $tags, categoryFiles: $categoryFiles, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, warehouseLocation: $warehouseLocation, outletLocation: $outletLocation)';
  }

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
