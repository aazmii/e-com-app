// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:pos_sq/src/app.db/app.db.dart';
// import 'package:pos_sq/src/modules/catgory.and.product/model/image.model.dart';

// class Product {
//   int? sl;

//   String? id;
//   String? name;
//   bool? isEnable;
//   double? price;

//   bool? isDiscount;
//   double? discountPrice;
//   double? vatPercentage;
//   List<ImageModel>? images;

//   String? categoryId;
//   String? categoryLabel;
//   String? description;
//   String? shortDescription;

//   int? position;
//   int? averageRating;
//   int? totalRating;
//   double? average5PercentRating;

//   double? average4PercentRating;
//   double? average3PercentRating;
//   double? average2PercentRating;
//   double? average1PercentRating;

//   Product({
//     this.sl,
//     this.id,
//     this.name,
//     this.isEnable,
//     this.price,
//     this.isDiscount,
//     this.discountPrice,
//     this.vatPercentage,
//     this.images,
//     this.categoryId,
//     this.categoryLabel,
//     this.description,
//     this.shortDescription,
//     this.position,
//     this.averageRating,
//     this.totalRating,
//     this.average5PercentRating,
//     this.average4PercentRating,
//     this.average3PercentRating,
//     this.average2PercentRating,
//     this.average1PercentRating,
//   });

//   Product copyWith({
//     int? sl,
//     String? id,
//     String? name,
//     bool? isEnable,
//     double? price,
//     bool? isDiscount,
//     double? discountPrice,
//     double? vatPercentage,
//     List<ImageModel>? images,
//     String? categoryId,
//     String? categoryLabel,
//     String? description,
//     String? shortDescription,
//     int? position,
//     int? averageRating,
//     int? totalRating,
//     double? average5PercentRating,
//     double? average4PercentRating,
//     double? average3PercentRating,
//     double? average2PercentRating,
//     double? average1PercentRating,
//   }) {
//     return Product(
//       sl: sl ?? this.sl,
//       id: id ?? this.id,
//       name: name ?? this.name,
//       isEnable: isEnable ?? this.isEnable,
//       price: price ?? this.price,
//       isDiscount: isDiscount ?? this.isDiscount,
//       discountPrice: discountPrice ?? this.discountPrice,
//       vatPercentage: vatPercentage ?? this.vatPercentage,
//       images: images ?? this.images,
//       categoryId: categoryId ?? this.categoryId,
//       categoryLabel: categoryLabel ?? this.categoryLabel,
//       description: description ?? this.description,
//       shortDescription: shortDescription ?? this.shortDescription,
//       position: position ?? this.position,
//       averageRating: averageRating ?? this.averageRating,
//       totalRating: totalRating ?? this.totalRating,
//       average5PercentRating:
//           average5PercentRating ?? this.average5PercentRating,
//       average4PercentRating:
//           average4PercentRating ?? this.average4PercentRating,
//       average3PercentRating:
//           average3PercentRating ?? this.average3PercentRating,
//       average2PercentRating:
//           average2PercentRating ?? this.average2PercentRating,
//       average1PercentRating:
//           average1PercentRating ?? this.average1PercentRating,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'sl': sl,
//       'id': id,
//       'name': name,
//       'isEnable': isEnable,
//       'price': price,
//       'is_disoucnt': isDiscount,
//       'disoucnt_price': discountPrice,
//       'vatPercentage': vatPercentage,
//       'images': images != null
//           ? jsonEncode(images!.map((e) => e.toJson()).toList())
//           : null,
//       'category_id': categoryId,
//       'category_label': categoryLabel,
//       'description': description,
//       'short_description': shortDescription,
//       'position': position,
//       'average_rating': averageRating,
//       'total_rating': totalRating,
//       'average_5_percent_rating': average5PercentRating,
//       'average_4_percent_rating': average4PercentRating,
//       'average_3_percent_rating': average3PercentRating,
//       'average_2_percent_rating': average2PercentRating,
//       'average_1_percent_rating': average1PercentRating,
//     };
//   }

//   static Product fromTableData(ProductTableData v) {
//     final data = Product(
//       sl: v.sl,
//       id: v.id,
//       name: v.name,
//       isEnable: v.isEnable,
//       price: v.price,
//       isDiscount: v.isDiscount,
//       discountPrice: v.discountPrice,
//       vatPercentage: v.vatPercentage,
//       images: v.images != null ? jsonDecode(v.images!) : null,
//       categoryId: v.categoryId,
//       categoryLabel: v.categoryLabel,
//       description: v.description,
//       shortDescription: v.shortDescription,
//       position: v.position,
//       averageRating: v.averageRating,
//       totalRating: v.totalRating,
//       average5PercentRating: v.average5PercentRating,
//       average4PercentRating: v.average4PercentRating,
//       average3PercentRating: v.average3PercentRating,
//       average2PercentRating: v.average2PercentRating,
//       average1PercentRating: v.average1PercentRating,
//     );
//     return data;
//   }

//   ProductTableData toTableData() {
//     final data = ProductTableData(
//       sl: sl,
//       id: id,
//       name: name,
//       isEnable: isEnable,
//       price: price,
//       isDiscount: isDiscount,
//       discountPrice: discountPrice,
//       vatPercentage: vatPercentage,
//       images: images != null ? jsonEncode(images!) : null,
//       categoryId: categoryId,
//       categoryLabel: categoryLabel,
//       description: description,
//       shortDescription: shortDescription,
//       position: position,
//       averageRating: averageRating,
//       totalRating: totalRating,
//       average5PercentRating: average5PercentRating,
//       average4PercentRating: average4PercentRating,
//       average3PercentRating: average3PercentRating,
//       average2PercentRating: average2PercentRating,
//       average1PercentRating: average1PercentRating,
//     );
//     return data;
//   }

//   static Product fromMap(Map<String, dynamic> map) {
//     final product = Product(
//       sl: map['sl'] != null ? map['sl'] as int : null,
//       id: map['id'] != null ? map['id'] as String : null,
//       name: map['name'] != null ? map['name'] as String : null,
//       isEnable: map['isEnable'] != null ? map['isEnable'] as bool : null,
//       price: map['price'] != null
//           ? (map['price'] is String)
//               ? double.parse(map['price'])
//               : map['price'] as double
//           : null,
//       isDiscount:
//           map['is_discount'] != null ? map['is_discount'] as bool : null,
//       discountPrice: map['discount_price'] != null
//           ? (map['discount_price'] is String)
//               ? double.parse(map['discount_price'])
//               : map['discount_price'] as double
//           : null,
//       vatPercentage: map['vatpercentage'] != null
//           ? (map['vatpercentage'] is String)
//               ? double.parse(map['vatpercentage'])
//               : map['vatpercentage'] as double
//           : null,
//       images: map['images'] != null
//           ? (map['images'] as List).map((e) => ImageModel.fromMap(e)).toList()
//           : null,
//       categoryId:
//           map['category_id'] != null ? map['category_id'] as String : null,
//       categoryLabel: map['category_label'] != null
//           ? map['category_label'] as String
//           : null,
//       description:
//           map['description'] != null ? map['description'] as String : null,
//       shortDescription: map['short_description'] != null
//           ? map['short_description'] as String
//           : null,
//       position: map['position'] != null ? map['position'] as int : null,
//       averageRating:
//           map['average_rating'] != null ? map['average_rating'] as int : null,
//       totalRating: map['total_rating'] != null
//           ? (map['total_rating'] is String)
//               ? int.parse(map['total_rating'])
//               : map['total_rating'] as int
//           : null,
//       average5PercentRating: map['average_5_percent_rating'] != null
//           ? (map['average_5_percent_rating'] is String)
//               ? double.parse(map['average_5_percent_rating'])
//               : map['average_5_percent_rating'] as double
//           : null,
//       average4PercentRating: map['average_4_percentRating'] != null
//           ? (map['average4PercentRating'] is String)
//               ? double.parse(map['average_4_percentRating'])
//               : map['average4PercentRating'] as double
//           : null,
//       average3PercentRating: map['average_3_percent_rating'] != null
//           ? (map['average_3_percent_rating'] is String)
//               ? double.parse(map['average_3_percent_rating'])
//               : map['average_3_percent_rating'] as double
//           : null,
//       average2PercentRating: map['average_2_percent_rating'] != null
//           ? (map['average_2_percent_rating'] is String)
//               ? double.parse(map['average_2_percent_rating'])
//               : map['average_2_percent_rating'] as double
//           : null,
//       average1PercentRating: map['average_1_percent_rating'] != null
//           ? (map['average_1_percent_rating'] is String)
//               ? double.parse(map['average_1_percent_rating'])
//               : map['average_1_percent_rating'] as double
//           : null,
//     );
//     return product;
//   }

//   String toJson() => json.encode(toMap());

//   factory Product.fromJson(String source) =>
//       Product.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Product(sl: $sl, id: $id, name: $name, isEnable: $isEnable, price: $price, isDiscount: $isDiscount, discountPrice: $discountPrice, vatPercentage: $vatPercentage, images: $images, categoryId: $categoryId, categoryLabel: $categoryLabel, description: $description, shortDescription: $shortDescription, position: $position, averageRating: $averageRating, totalRating: $totalRating, average5PercentRating: $average5PercentRating, average4PercentRating: $average4PercentRating, average3PercentRating: $average3PercentRating, average2PercentRating: $average2PercentRating, average1PercentRating: $average1PercentRating)';
//   }

//   @override
//   bool operator ==(covariant Product other) {
//     if (identical(this, other)) return true;

//     return other.id == id;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode;
//   }
// }
