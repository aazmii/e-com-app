// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pos_sq/src/modules/catgory.and.product/model/category/outlet.location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/updated.by.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/warehouse.location.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/created.by.dart';

class Category2 {
  String? label;
  int? parentId;
  bool? menu;
  bool? liveSales;
  bool? root;
  bool? home;
  bool? specialCategory;
  bool? bestSaleCategory;
  String? type;
  List<String>? tags;
  List<String>? categoryFiles;
  DateTime? createdAt;
  CreatedBy? createdBy;
  DateTime? updatedAt;
  UpdatedBy? updatedBy;
  int? shelfLife;
  int? minimumInventory;
  WarehouseLocation? warehouseLocation;
  OutletLocation? outletLocation;
  String? rackLocation;

  // int? id;
  // String? description;
  // String? position;
  // bool? enable;
}
