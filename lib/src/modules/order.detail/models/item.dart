import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

class Item {
  final int? sl;
  final String? id;
  final String? name;
  final bool? isCustomItem;
  final int? count;
  final double? price;
  final double? vat;
  final String? imageurl;

  Item({
    this.sl,
    this.id,
    this.isCustomItem,
    required this.name,
    required this.count,
    required this.price,
    this.imageurl,
    this.vat,
  });

  Item copyWith({
    int? sl,
    String? id,
    bool? isCustomItem,
    String? name,
    int? count,
    double? price,
    String? imageurl,
    double? vat,
  }) {
    return Item(
      sl: sl ?? this.sl,
      isCustomItem: isCustomItem ?? this.isCustomItem,
      id: id ?? this.id,
      name: name ?? this.name,
      count: count ?? this.count,
      price: price ?? this.price,
      imageurl: imageurl ?? this.imageurl,
      vat: vat ?? this.vat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sl': sl,
      'id': id,
      'isCustomItem': isCustomItem,
      'name': name,
      'count': count,
      'price': price,
      'imageurl': imageurl,
      'vat': vat,
    };
  }

  ItemTableData toTableData() {
    final data = ItemTableData(
      sl: sl,
      id: id,
      name: name,
      count: count,
      isCustomItem: isCustomItem,
      price: price,
      imageUrl: imageurl,
      vat: vat ?? 0.00,
    );
    return data;
  }

  static Item fromTableData(ItemTableData d) => Item(
        sl: d.sl,
        id: d.id,
        name: d.name,
        isCustomItem: d.isCustomItem,
        count: d.count,
        price: d.price,
        imageurl: d.imageUrl,
        vat: d.vat ?? 0.00,
      );

  static Item fromProduct(Product p) {
    return Item(
      id: p.productId,
      isCustomItem: false,
      name: p.label,
      price: p.price ?? 0.00,
      count: null,
      imageurl: p.files?.first.image,
      vat: p.vatInPercentage,
    );
  }

  static Item fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String?,
      name: map['name'] as String?,
      count: map['count'] != null ? map['count'] as int : null,
      price: map['price'] != null ? map['price'] as double : null,
      imageurl: map['imageurl'] as String?,
      vat: null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, count: $count, price: $price, imageurl: $imageurl)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
