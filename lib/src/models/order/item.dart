import 'dart:convert';

class Item {
  final String? id;
  final String? name;
  final int? count;
  final int? price;
  final String? imageurl;
  Item({
    this.id,
    this.name,
    this.count,
    this.price,
    this.imageurl,
  });

  Item copyWith({
    String? id,
    String? name,
    int? count,
    int? price,
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

  static Item fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as String?,
      name: map['name'] as String?,
      count: map['count'] != null ? map['count'] as int : null,
      price: map['price'] != null ? map['price'] as int : null,
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

    return other.id == id &&
        other.name == name &&
        other.count == count &&
        other.price == price &&
        other.imageurl == imageurl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        count.hashCode ^
        price.hashCode ^
        imageurl.hashCode;
  }
}
