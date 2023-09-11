// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ImageModel {
  String? id;
  String? image;
  String? name;
  String? itemType;

  ImageModel({
    this.id,
    this.image,
    this.name,
    this.itemType,
  });

  ImageModel copyWith({
    String? id,
    String? image,
    String? name,
    String? itemType,
  }) {
    return ImageModel(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      itemType: itemType ?? this.itemType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': name,
      'itemType': itemType,
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      id: map['id'] != null ? map['id'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      itemType: map['itemType'] != null ? map['itemType'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) =>
      ImageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ImageModel(id: $id, image: $image, name: $name, itemType: $itemType)';
  }

  @override
  bool operator ==(covariant ImageModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.image == image &&
        other.name == name &&
        other.itemType == itemType;
  }

  @override
  int get hashCode {
    return id.hashCode ^ image.hashCode ^ name.hashCode ^ itemType.hashCode;
  }
}
