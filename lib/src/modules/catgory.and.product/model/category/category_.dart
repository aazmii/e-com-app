// // // ignore_for_file: public_member_api_docs, sort_constructors_first
// // import 'dart:convert';

// // import 'package:pos_sq/src/app.db/app.db.dart';
// // import 'package:pos_sq/src/app.db/tables/category.table.dart';
// // import 'package:pos_sq/src/app.db/tables/product.table.dart';
// // import 'package:pos_sq/src/modules/catgory.and.product/model/location.dart';
// // import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

// import 'dart:convert';

// import 'package:pos_sq/src/app.db/app.db.dart';
// import 'package:pos_sq/src/app.db/tables/category.table.dart';
// import 'package:pos_sq/src/app.db/tables/product.table.dart';
// import 'package:pos_sq/src/modules/catgory.and.product/model/image.model.dart';
// import 'package:pos_sq/src/modules/catgory.and.product/model/product/product_.dart';

// part 'category.ext.dart';

// class Category {
//   String? id;
//   List<Product>? products;
//   List<ImageModel>? images;
//   ImageModel? image;
//   String? label;
//   String? description;
//   bool? isExpend;
//   int? position;
//   bool? isEnable;
//   bool? isIncludeMenu;
//   bool? isIncludeLiveSales;
//   bool? isParent;
//   bool? isIncludeHome;
//   bool? showInSpecialCategory;
//   bool? showBestSaleCategory;
//   String? type;
//   String? code;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   String? createdBy;
//   String? updatedBy;
//   Category? parent;
//   List<Category>? children;
//   Category({
//     this.id,
//     this.products,
//     this.images,
//     this.image,
//     this.label,
//     this.description,
//     this.isExpend,
//     this.position,
//     this.isEnable,
//     this.isIncludeMenu,
//     this.isIncludeLiveSales,
//     this.isParent,
//     this.isIncludeHome,
//     this.showInSpecialCategory,
//     this.showBestSaleCategory,
//     this.type,
//     this.code,
//     this.createdAt,
//     this.updatedAt,
//     this.createdBy,
//     this.updatedBy,
//     this.children,
//   });

//   Category copyWith({
//     String? id,
//     List<Product>? products,
//     List<ImageModel>? images,
//     ImageModel? image,
//     String? label,
//     String? description,
//     bool? isExpend,
//     int? position,
//     bool? isEnable,
//     bool? isIncludeMenu,
//     bool? isIncludeLiveSales,
//     bool? isParent,
//     bool? isIncludeHome,
//     bool? showInSpecialCategory,
//     bool? showBestSaleCategory,
//     String? type,
//     String? code,
//     DateTime? createdAt,
//     DateTime? updatedAt,
//     String? createdBy,
//     String? updatedBy,
//     List<Category>? children,
//   }) {
//     return Category(
//       id: id ?? this.id,
//       products: products ?? this.products,
//       images: images ?? this.images,
//       image: image ?? this.image,
//       label: label ?? this.label,
//       description: description ?? this.description,
//       isExpend: isExpend ?? this.isExpend,
//       position: position ?? this.position,
//       isEnable: isEnable ?? this.isEnable,
//       isIncludeMenu: isIncludeMenu ?? this.isIncludeMenu,
//       isIncludeLiveSales: isIncludeLiveSales ?? this.isIncludeLiveSales,
//       isParent: isParent ?? this.isParent,
//       isIncludeHome: isIncludeHome ?? this.isIncludeHome,
//       showInSpecialCategory:
//           showInSpecialCategory ?? this.showInSpecialCategory,
//       showBestSaleCategory: showBestSaleCategory ?? this.showBestSaleCategory,
//       type: type ?? this.type,
//       code: code ?? this.code,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       createdBy: createdBy ?? this.createdBy,
//       updatedBy: updatedBy ?? this.updatedBy,
//       children: children ?? this.children,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'products':
//           products != null ? products!.map((x) => x.toMap()).toList() : null,
//       'images': images != null ? images!.map((x) => x.toMap()).toList() : null,
//       'image': image?.toMap(),
//       'label': label,
//       'description': description,
//       'isExpend': isExpend,
//       'position': position,
//       'isEnable': isEnable,
//       'isIncludeMenu': isIncludeMenu,
//       'isIncludeLiveSales': isIncludeLiveSales,
//       'isParent': isParent,
//       'isIncludeHome': isIncludeHome,
//       'showInSpecialCategory': showInSpecialCategory,
//       'showBestSaleCategory': showBestSaleCategory,
//       'type': type,
//       'code': code,
//       'createdAt': createdAt?.millisecondsSinceEpoch,
//       'updatedAt': updatedAt?.millisecondsSinceEpoch,
//       'createdBy': createdBy,
//       'updatedBy': updatedBy,
//       'children':
//           children != null ? children!.map((x) => x.toMap()).toList() : null,
//     };
//   }

//   CategoryTableData toTableData() {
//     final data = CategoryTableData(
//       id: id,
//       products: products != null
//           ? jsonEncode(products!.map((e) => e.toJson()).toList())
//           : null,
//       images: images != null
//           ? jsonEncode(images!.map((e) => e.toJson()).toList())
//           : null,
//       image: jsonEncode(image),
//       label: label,
//       description: description,
//       isExpend: isExpend,
//       position: position,
//       isEnable: isEnable,
//       isIncludeMenu: isIncludeMenu,
//       isIncludeLiveSales: isIncludeLiveSales,
//       isParent: isParent,
//       isIncludeHome: isIncludeHome,
//       showInSpecialCategory: showInSpecialCategory,
//       showBestSaleCategory: showBestSaleCategory,
//       type: type,
//       code: code,
//       createdAt: createdAt,
//       updatedAt: updatedAt,
//       createdBy: createdBy,
//       updatedBy: updatedBy,
//       children: children != null
//           ? jsonEncode(children!.map((e) => e.toJson()).toList())
//           : null,
//     );
//     return data;
//   }

//   static Category fromMap(Map<String, dynamic> map) {
//     final data = Category(
//       id: map['id'] != null ? map['id'] as String : null,
//       products: map['products'] != null
//           ? (map['products'] as List).map((e) {
//               return Product.fromMap(e);
//             }).toList()
//           : null,
//       images: map['images'] != null
//           ? (map['images'] as List).map((e) => ImageModel.fromMap(e)).toList()
//           : null,
//       image: map['image'] != null
//           ? ImageModel.fromMap(map['image'] as Map<String, dynamic>)
//           : null,
//       label: map['label'] != null ? map['label'] as String : null,
//       description:
//           map['description'] != null ? map['description'] as String : null,
//       isExpend: map['isExpend'] != null ? map['isExpend'] as bool : null,
//       position: map['position'] != null ? map['position'] as int : null,
//       isEnable: map['isEnable'] != null ? map['isEnable'] as bool : null,
//       isIncludeMenu:
//           map['isIncludeMenu'] != null ? map['isIncludeMenu'] as bool : null,
//       isIncludeLiveSales: map['isIncludeLiveSales'] != null
//           ? map['isIncludeLiveSales'] as bool
//           : null,
//       isParent: map['isParent'] != null ? map['isParent'] as bool : null,
//       isIncludeHome:
//           map['isIncludeHome'] != null ? map['isIncludeHome'] as bool : null,
//       showInSpecialCategory: map['showInSpecialCategory'] != null
//           ? map['showInSpecialCategory'] as bool
//           : null,
//       showBestSaleCategory: map['showBestSaleCategory'] != null
//           ? map['showBestSaleCategory'] as bool
//           : null,
//       type: map['type'] != null ? map['type'] as String : null,
//       code: map['code'] != null ? map['code'] as String : null,
//       createdAt: map['createdAt'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
//           : null,
//       updatedAt: map['updatedAt'] != null
//           ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
//           : null,
//       createdBy: map['createdBy'] != null ? map['createdBy'] as String : null,
//       updatedBy: map['updatedBy'] != null ? map['updatedBy'] as String : null,
//       children: map['children'] != null
//           ? (map['children'] as List).map((e) => Category.fromJson(e)).toList()
//           : null,
//     );
//     return data;
//   }

//   String toJson() => json.encode(toMap());

//   factory Category.fromJson(String source) =>
//       Category.fromMap(json.decode(source) as Map<String, dynamic>);

//   static Category fromTableData(CategoryTableData d) {
//     final category = Category(
//       id: d.id,
//       label: d.label,
//       description: d.description,
//       children: d.children != null
//           ? (jsonDecode(d.children!) as List)
//               .map((e) => Category.fromJson(e))
//               .toList()
//           : null,
//       products: null,
//       // products: d.products != null
//       //     ? (jsonDecode(d.products!) as List)
//       //         .map((e) => Product.fromJson(e))
//       //         .toList()
//       //     : null,
//       images: d.images != null
//           ? (jsonDecode(d.images!) as List)
//               .map((e) => ImageModel.fromMap(e))
//               .toList()
//           : null,
//       isExpend: d.isExpend,
//       position: d.position,
//       isEnable: d.isEnable,
//       isIncludeMenu: d.isIncludeMenu,
//       isIncludeLiveSales: d.isIncludeLiveSales,
//       isParent: d.isParent,
//       isIncludeHome: d.isIncludeHome,
//       showInSpecialCategory: d.showInSpecialCategory,
//       showBestSaleCategory: d.showBestSaleCategory,
//       type: d.type,
//       code: d.code,
//       createdAt: d.createdAt,
//       updatedAt: d.updatedAt,
//       createdBy: d.createdBy,
//       updatedBy: d.updatedBy,
//     );
//     return category;
//   }

//   @override
//   String toString() {
//     return 'Category(id: $id, products: $products, images: $images, image: $image, label: $label, description: $description, isExpend: $isExpend, position: $position, isEnable: $isEnable, isIncludeMenu: $isIncludeMenu, isIncludeLiveSales: $isIncludeLiveSales, isParent: $isParent, isIncludeHome: $isIncludeHome, showInSpecialCategory: $showInSpecialCategory, showBestSaleCategory: $showBestSaleCategory, type: $type, code: $code, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, children: $children)';
//   }

//   @override
//   bool operator ==(covariant Category other) {
//     if (identical(this, other)) return true;

//     return other.id == id;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode;
//   }
// }
