import 'package:sqflite/sqflite.dart';

import 'product.item.dart';
part 'product.ext.dart';

class ProductCategory {
  String? id;
  List<ProductCategory>? subCategories;
  List<Product>? products;
  List<dynamic>? images;
  String? label;
  String? name;
  String? description;
  bool? isParent;
  dynamic itemCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? createdBy;
  String? updatedBy;
  ProductCategory({
    this.id,
    this.subCategories,
    this.products,
    this.images,
    this.label,
    this.name,
    this.description,
    this.isParent,
    this.itemCode,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json['id'],
      label: json['label'],
      name: json['name'],
      description: json['description'],
      products: json['products'] == null
          ? []
          : List<Product>.from(
              json['products']!.map(
                (x) => Product.fromJson(x),
              ),
            ),
      subCategories: json['children'] == null
          ? []
          : List<ProductCategory>.from(
              json['children']!.map(
                (x) => ProductCategory.fromJson(x),
              ),
            ),
      isParent: json['is_parent'],
      itemCode: json['code'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at']),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at']),
    );
  }

  @override
  bool operator ==(covariant ProductCategory other) {
    if (identical(this, other)) return true;
    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
