import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

class Item {
  final String? id;
  final String? name;
  final int? count;
  final double? price;
  final String? imageurl;
  Item({
    this.id,
    required this.name,
    required this.count,
    required this.price,
    this.imageurl,
  });

  Item copyWith({
    String? id,
    String? name,
    int? count,
    double? price,
    String? imageurl,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      count: count ?? this.count,
      price: price ?? this.price,
      imageurl: imageurl ?? this.imageurl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'count': count,
      'price': price,
      'imageurl': imageurl,
    };
  }

  ItemTableData toTableData() => ItemTableData(
        id: id,
        name: name,
        count: count,
        price: price,
        imageUrl: imageurl,
      );
  static Item fromTableData(ItemTableData d) => Item(
        id: d.id,
        name: d.name,
        count: d.count,
        price: d.price,
        imageurl: d.imageUrl,
      );

  static Item fromProduct(Product p) {
    return Item(
        id: p.productId,
        name: p.label,
        price: p.price,
        count: null,
        imageurl: p.files != null ? p.files!.first : null);
  }

  static Item fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String?,
      name: map['name'] as String?,
      count: map['count'] != null ? map['count'] as int : null,
      price: map['price'] != null ? map['price'] as double : null,
      imageurl: map['imageurl'] as String?,
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
