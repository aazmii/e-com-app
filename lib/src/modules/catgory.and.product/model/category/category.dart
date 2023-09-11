// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/category.table.dart';
import 'package:pos_sq/src/app.db/tables/product.table.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

part 'category.ext.dart';

class Category {
  int? sl;

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
  bool? isEnable;

  bool? menu;
  bool? liveSales;
  bool? root;
  bool? home;

  bool? showInSpecialCategory;
  bool? showBestSaleCategory;
  List<String>? tags;
  List<String>? categoryFiles;

  DateTime? createdAt;

  DateTime? updatedAt;
  String? createdBy;
  String? updatedBy;

  Location? warehouseLocation;
  Location? outletLocation;

  //needed only for state management
  Category? pinnedCategory;
  Category({
    this.sl,
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
    this.isEnable,
    this.menu,
    this.liveSales,
    this.root,
    this.home,
    this.showInSpecialCategory,
    this.showBestSaleCategory,
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
    bool? isEnable,
    bool? menu,
    bool? liveSales,
    bool? root,
    bool? home,
    bool? showInSpecialCategory,
    bool? showBestSaleCategory,
    List<String>? tags,
    List<String>? categoryFiles,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? createdBy,
    String? updatedBy,
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
      isEnable: isEnable ?? this.isEnable,
      menu: menu ?? this.menu,
      liveSales: liveSales ?? this.liveSales,
      root: root ?? this.root,
      home: home ?? this.home,
      showInSpecialCategory:
          showInSpecialCategory ?? this.showInSpecialCategory,
      showBestSaleCategory: showBestSaleCategory ?? this.showBestSaleCategory,
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
      'parent': parentId,
      'description': description,
      'children': children?.map((x) => x.toMap()).toList(),
      'products': products!.map((x) => x.toMap()).toList(),
      'type': type,
      'rackLocation': rackLocation,
      'position': position,
      'shelfLife': shelfLife,
      'minimumInventory': minimumInventory,
      'isEnable': isEnable,
      'menu': menu,
      'liveSales': liveSales,
      'root': root,
      'home': home,
      'showInSpecialCategory': showInSpecialCategory,
      'showBestSaleCategory': showBestSaleCategory,
      'tags': tags,
      'categoryFiles': categoryFiles,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'warehouseLocation': warehouseLocation?.toMap(),
      'outletLocation': outletLocation?.toMap(),
    };
  }

  static Category fromMap(Map<String, dynamic> map) {
    final category = Category(
      id: map['id'] != null ? map['id'] as String? : null,
      label: map['label'] != null ? map['label'] as String : null,
      parentId: map['parent'] != null ? map['parent'] as String : null,
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
      minimumInventory: null,
      // isEnable: map['is_enable'] as bool?,
      menu: null,
      liveSales: null,
      root: null,
      home: null,
      showInSpecialCategory: map['show_in_special_category'] != null
          ? map['show_in_special_category'] as bool
          : null,
      showBestSaleCategory: map['show_best_sale_category'] != null
          ? map['show_best_sale_category'] as bool
          : null,
      tags: null,
      categoryFiles: null,
      createdAt:
          map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt:
          map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
      createdBy: map['created_by'] as String?,
      updatedBy: map['updated_by'] as String?,
      warehouseLocation: null,
      outletLocation: null,
    );

    return category;
  }

  CategoryTableData toTableData() {
    final data = CategoryTableData(
      sl: sl,
      id: id,
      parentId: parentId,
      label: label,
      description: description,
      type: type,
      rackLocation: rackLocation,
      position: position,
      shelfLife: shelfLife,
      minimumInventory: minimumInventory,
      enable: isEnable != null
          ? isEnable!
              ? 1
              : 0
          : null,
      menu: menu,
      liveSales: liveSales,
      root: root,
      home: home,
      specialCategory: showInSpecialCategory,
      bestSellCategory: showBestSaleCategory,
      tags: jsonEncode(tags),
      categoryFiles: jsonEncode(categoryFiles),
      createdAt: createdAt,
      createdBy: createdBy,
      warehouseLocation:
          warehouseLocation != null ? warehouseLocation!.toJson() : null,
      outletLocation: outletLocation != null ? outletLocation!.toJson() : null,
    );
    return data;
  }

  static Category fromTableData(CategoryTableData d) {
    final category = Category(
      sl: d.sl,
      id: d.id,
      parentId: d.parentId,
      label: d.label,
      description: d.description,
      type: d.type,
      rackLocation: d.rackLocation,
      position: d.position,
      shelfLife: d.shelfLife,
      minimumInventory: d.minimumInventory,
      isEnable: d.enable != null
          ? d.enable! == 1
              ? true
              : false
          : null,
      menu: d.menu,
      liveSales: d.liveSales,
      root: d.root,
      home: d.home,
      showBestSaleCategory: d.specialCategory,
      showInSpecialCategory: d.bestSellCategory,
      tags: d.tags != null ? jsonDecode(d.tags!) : null,
      categoryFiles:
          d.categoryFiles != null ? jsonDecode(d.categoryFiles!) : null,
      createdAt: d.createdAt,
      createdBy: d.createdBy,
      warehouseLocation: d.warehouseLocation != null
          ? Location.fromJson(d.warehouseLocation!)
          : null,
      outletLocation: d.outletLocation != null
          ? Location.fromJson(d.outletLocation!)
          : null,
    );
    return category;
  }

  String toJson() => json.encode(toMap());

  static Category fromJson(dynamic source) {
    return Category.fromMap(source);
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
