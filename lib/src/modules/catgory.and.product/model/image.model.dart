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
  }) =>
      ImageModel(
        id: id ?? this.id,
        image: image ?? this.image,
        name: name ?? this.name,
        itemType: itemType ?? this.itemType,
      );

  factory ImageModel.fromRawJson(String str) =>
      ImageModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
        id: json['id'],
        image: json['image'],
        name: json['name'],
        itemType: json['itemType'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'name': name,
        'itemType': itemType,
      };
}
