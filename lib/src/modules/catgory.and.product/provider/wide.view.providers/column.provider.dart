import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:sqflite/sqflite.dart';

import '../../model/category/category.dart';

final columnProvider =
    AsyncNotifierProviderFamily<_ColumnProvider, List<dynamic>, Category>(
  _ColumnProvider.new,
);

class _ColumnProvider extends FamilyAsyncNotifier<List<dynamic>, Category> {
  late final Database db;
  late final List<dynamic> defultState;
  @override
  Future<List<dynamic>> build(Category motherCategory) async {
    db = await LocalDB().database;

    final subCategories = await motherCategory.getChildren(db);
    final products = await motherCategory.getProducts(db);
   
    defultState = [
      motherCategory,
      ...subCategories,
      ...products,
    ];
    return defultState;
  }

  List<dynamic> deletableCategoryAndProduct = [];
  int? prevIndex;
  final scrollController = ScrollController();

  void onSelectCategory(
    BuildContext context, {
    required int index,
  }) {}

  void _addProductsFromIndex({
    required int insertIndex,
    required int selectedIndex,
  }) {}

  void _removeNestedItems(Category category) {}
}
