// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqflite/sqflite.dart';
part 'category2.ext.dart';

class Category2 {
  String? label;
  String? parentId;
  String? description;

  String? type;
  String? rackLocation;

  String? id;
  int? position;
  int? shelfLife;
  int? minimumInventory;
  bool? enable;
  bool? menu;
  bool? liveSales;
  bool? root;
  bool? home;
  bool? specialCategory;
  bool? bestSaleCategory;

  List<String>? tags;
  List<String>? categoryFiles;
  DateTime? createdAt;

  DateTime? updatedAt;
  Person? createdBy;
  Person? updatedBy;

  Location? warehouseLocation;
  Location? outletLocation;
  Category2({
    this.id,
    this.label,
    this.parentId,
    this.description,
    this.type,
    this.rackLocation,
    this.position,
    this.shelfLife,
    this.minimumInventory,
    this.enable,
    this.menu,
    this.liveSales,
    this.root,
    this.home,
    this.specialCategory,
    this.bestSaleCategory,
    this.tags,
    this.categoryFiles,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.warehouseLocation,
    this.outletLocation,
  });

  Category2 copyWith({
    String? id,
    String? label,
    String? parentId,
    String? description,
    String? type,
    String? rackLocation,
    int? position,
    int? shelfLife,
    int? minimumInventory,
    bool? enable,
    bool? menu,
    bool? liveSales,
    bool? root,
    bool? home,
    bool? specialCategory,
    bool? bestSaleCategory,
    List<String>? tags,
    List<String>? categoryImages,
    List<String>? categoryFiles,
    DateTime? createdAt,
    DateTime? updatedAt,
    Person? createdBy,
    Person? updatedBy,
    Location? warehouseLocation,
    Location? outletLocation,
  }) {
    return Category2(
      label: label ?? this.label,
      parentId: parentId ?? this.parentId,
      description: description ?? this.description,
      type: type ?? this.type,
      rackLocation: rackLocation ?? this.rackLocation,
      position: position ?? this.position,
      shelfLife: shelfLife ?? this.shelfLife,
      id: id ?? this.id,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      enable: enable ?? this.enable,
      menu: menu ?? this.menu,
      liveSales: liveSales ?? this.liveSales,
      root: root ?? this.root,
      home: home ?? this.home,
      specialCategory: specialCategory ?? this.specialCategory,
      bestSaleCategory: bestSaleCategory ?? this.bestSaleCategory,
      tags: tags ?? this.tags,
      categoryFiles: categoryFiles ?? this.categoryFiles,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'parentId': parentId,
      'description': description,
      'id': id,
      'type': type,
      'rackLocation': rackLocation,
      'position': position,
      'shelfLife': shelfLife,
      'minimumInventory': minimumInventory,
      'enable': enable,
      'menu': menu,
      'liveSales': liveSales,
      'root': root,
      'home': home,
      'specialCategory': specialCategory,
      'bestSaleCategory': bestSaleCategory,
      'tags': tags,
      'categoryFiles': categoryFiles,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'createdBy': createdBy?.toMap(),
      'updatedBy': updatedBy?.toMap(),
      'warehouseLocation': warehouseLocation?.toMap(),
      'outletLocation': outletLocation?.toMap(),
    };
  }

  factory Category2.fromMap(Map<String, dynamic> map) {
    return Category2(
      id: map['id'] != null ? map['id'] as String : null,
      label: map['label'] != null ? map['label'] as String : null,
      parentId: map['parentId'] != null ? map['parentId'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      rackLocation:
          map['rackLocation'] != null ? map['rackLocation'] as String : null,
      position: map['position'] != null ? map['position'] as int : null,
      shelfLife: map['shelfLife'] != null ? map['shelfLife'] as int : null,
      minimumInventory: map['minimumInventory'] != null
          ? map['minimumInventory'] as int
          : null,
      enable: map['enable'] != null ? map['enable'] as bool : null,
      menu: map['menu'] != null ? map['menu'] as bool : null,
      liveSales: map['liveSales'] != null ? map['liveSales'] as bool : null,
      root: map['root'] != null ? map['root'] as bool : null,
      home: map['home'] != null ? map['home'] as bool : null,
      specialCategory: map['specialCategory'] != null
          ? map['specialCategory'] as bool
          : null,
      bestSaleCategory: map['bestSaleCategory'] != null
          ? map['bestSaleCategory'] as bool
          : null,
      tags: map['tags'] != null
          ? List<String>.from((map['tags'] as List<String>))
          : null,
      categoryFiles: map['categoryFiles'] != null
          ? List<String>.from((map['categoryFiles'] as List<String>))
          : null,
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int)
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int)
          : null,
      createdBy: map['createdBy'] != null
          ? Person.fromMap(map['createdBy'] as Map<String, dynamic>)
          : null,
      updatedBy: map['updatedBy'] != null
          ? Person.fromMap(map['updatedBy'] as Map<String, dynamic>)
          : null,
      warehouseLocation: map['warehouseLocation'] != null
          ? Location.fromMap(map['warehouseLocation'] as Map<String, dynamic>)
          : null,
      outletLocation: map['outletLocation'] != null
          ? Location.fromMap(map['outletLocation'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category2.fromJson(String source) =>
      Category2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Category2(label: $label, parentId: $parentId, description: $description, type: $type, rackLocation: $rackLocation, position: $position, shelfLife: $shelfLife, minimumInventory: $minimumInventory, enable: $enable, menu: $menu, liveSales: $liveSales, root: $root, home: $home, specialCategory: $specialCategory, bestSaleCategory: $bestSaleCategory, tags: $tags, categoryFiles: $categoryFiles, createdAt: $createdAt, updatedAt: $updatedAt, createdBy: $createdBy, updatedBy: $updatedBy, warehouseLocation: $warehouseLocation, outletLocation: $outletLocation)';
  }
}

class Person {
  String? name;
  String? designation;
  Person({
    this.name,
    this.designation,
  });

  Person copyWith({
    String? name,
    String? designation,
  }) {
    return Person(
      name: name ?? this.name,
      designation: designation ?? this.designation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'designation': designation,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] != null ? map['name'] as String : null,
      designation:
          map['designation'] != null ? map['designation'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, designation: $designation)';

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.designation == designation;
  }

  @override
  int get hashCode => name.hashCode ^ designation.hashCode;
}

class Location {
  String? addressLine;
  Location({
    this.addressLine,
  });

  Location copyWith({
    String? addressLine,
  }) {
    return Location(
      addressLine: addressLine ?? this.addressLine,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLine': addressLine,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      addressLine:
          map['addressLine'] != null ? map['addressLine'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Location(addressLine: $addressLine)';

  @override
  bool operator ==(covariant Location other) {
    if (identical(this, other)) return true;

    return other.addressLine == addressLine;
  }

  @override
  int get hashCode => addressLine.hashCode;
}
