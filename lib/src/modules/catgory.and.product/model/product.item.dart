 

 
import 'dart:convert';

import 'image.model.dart';

class Product {
  int? productId;
  String? id;
  String? name;
  bool? isEnable;
  String? price;
  bool? isDiscount;
  String? discountPrice;
  List<ImageModel>? images;
  String? categoryLabel;
  String? description;
  String? shortDescription;
  int? quantity;

  Product({
    this.productId,
    this.id,
    this.name,
    this.isEnable,
    this.price,
    this.isDiscount,
    this.discountPrice,
    this.images,
    this.categoryLabel,
    this.description,
    this.shortDescription,
    this.quantity = 1,
  });

  Product copyWith({
    String? id,
    int? productId,
    String? name,
    bool? isEnable,
    String? price,
    bool? isDiscount,
    String? discountPrice,
    List<ImageModel>? images,
    String? categoryLabel,
    String? description,
    String? shortDescription,
    int? quantity,
  }) =>
      Product(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        name: name ?? this.name,
        isEnable: isEnable ?? this.isEnable,
        price: price ?? this.price,
        isDiscount: isDiscount ?? this.isDiscount,
        discountPrice: discountPrice ?? this.discountPrice,
        images: images ?? this.images,
        categoryLabel: categoryLabel ?? this.categoryLabel,
        description: description ?? this.description,
        shortDescription: shortDescription ?? this.shortDescription,
        quantity: quantity ?? this.quantity,
      );

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      isEnable: json['isEnable'],
      price: json['price'],
      discountPrice: json['discount_price'],
      isDiscount: json['is_discount'],
      images: json['images'] == null
          ? []
          : List<ImageModel>.from(
              json['images']!.map((x) => ImageModel.fromJson(x))),
      categoryLabel: json['category_label'],
      description: json['description'],
      shortDescription: json['short_description'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'isEnable': isEnable,
        'price': price,
        'is_discount': isDiscount,
        'discount_price': discountPrice,
        'images': images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        'category_label': categoryLabel,
        'description': description,
        'short_description': shortDescription,
      };

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
