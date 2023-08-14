import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'product.dart';
part 'category.ext.dart';

class Category {
  Category({
    this.products,
    this.isExpanded = false,
    this.id,
    this.parentId,
    this.label,
    this.isEnable,
    this.isIncludeMenu,
    this.isIncludeLiveSales,
    this.isIncludeHome,
    this.isParent,
    this.parent,
    this.imageUrl,
    this.children,
  });
  List<Product>? products;
  String? id;
  bool? isExpanded;
  String? parentId;
  String? label;
  bool? isEnable;
  bool? isIncludeMenu;
  bool? isIncludeLiveSales;
  bool? isIncludeHome;
  bool? isParent;
  String? parent;
  String? imageUrl;
  List<Category>? children;
  static createTable(Database db) async {
    await db.execute('''
          CREATE TABLE category (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            children JSONB,
            products JSONB,
            label TEXT,
            imageUrl TEXT[]
          )
    ''');
  }

  Category copyWith({
    List<Product>? products,
    String? id,
    bool? isExpanded,
    String? parentId,
    String? label,
    bool? isEnable,
    bool? isIncludeMenu,
    bool? isIncludeLiveSales,
    bool? isIncludeHome,
    bool? isParent,
    String? parent,
    String? imageUrl,
    List<Category>? children,
  }) =>
      Category(
        products: products ?? this.products,
        id: id ?? this.id,
        isExpanded: isExpanded ?? this.isExpanded,
        parentId: parentId ?? this.parentId,
        label: label ?? this.label,
        isEnable: isEnable ?? this.isEnable,
        isIncludeMenu: isIncludeMenu ?? this.isIncludeMenu,
        isIncludeLiveSales: isIncludeLiveSales ?? this.isIncludeLiveSales,
        isIncludeHome: isIncludeHome ?? this.isIncludeHome,
        isParent: isParent ?? this.isParent,
        parent: parent ?? this.parent,
        imageUrl: imageUrl ?? this.imageUrl,
        children: children ?? this.children,
      );

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        products:  null,
        id: json['id'],
        parentId: json['parent_id'],
        label: json['label'],
        isEnable: json['is_enable'],
        isIncludeMenu: json['is_include_menu'],
        isIncludeLiveSales: json['is_include_live_sales'],
        isIncludeHome: json['is_include_home'],
        isParent: json['is_parent'],
        parent: json['parent'],
        imageUrl: json['image_url'],
        children: json['children'] == null
            ? []
            : List<Category>.from(
                json['children'].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'parent_id': parentId,
        'label': label,
        'is_enable': isEnable,
        'is_include_menu': isIncludeMenu,
        'is_include_live_sales': isIncludeLiveSales,
        'is_include_home': isIncludeHome,
        'is_parent': isParent,
        'parent': parent,
        'image_url': imageUrl,
        'children': children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'Category(id: $id,parent_id: $parentId, label: $label, isEnable: $isEnable, isIncludeMenu: $isIncludeMenu, isIncludeLiveSales: $isIncludeLiveSales, isIncludeHome: $isIncludeHome, isParent: $isParent, parent: $parent, imageUrl: $imageUrl, children: $children)';
  }

  @override
  bool operator ==(Object other) => other is Category && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
