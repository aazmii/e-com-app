import 'dart:async';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/category.table.dart';
import 'package:pos_sq/src/app.db/tables/product.table.dart';
import 'package:pos_sq/src/modules/catgory.and.product/api/category.api.dart';

import '../../model/category/category.dart';

ScrollController horizonalScrollController = ScrollController();

final motherCategoriesProvider =
    AsyncNotifierProvider<ApiCategoryProvider, List<Category>>(
  ApiCategoryProvider.new,
);

class ApiCategoryProvider extends AsyncNotifier<List<Category>> {
  @override
  FutureOr<List<Category>> build() async {
    List<CategoryTableData>? categoryDataList =
        await CategoryTable().getCategories();
    if (categoryDataList.isEmpty) {
      await initLocalDb();
      categoryDataList = await CategoryTable().getCategories();
    }
    return categoryDataList.map((x) => Category.fromTableData(x)).toList();
  }

  Future<void> initLocalDb() async {
    final apiCategories = await getProductCategories() ?? [];
    await _extractAndSaveCategory(apiCategories);
  }

  Future<List<Category>> getCategoriesFromDb() async {
    // return (await LocalDB.getAllData('category')).map((e) {
    //   return Category.fromMap(e);
    // }).toList();
    return [];
  }

  void onNext(double px) {
    // ref.read(layoutProvider);
    horizonalScrollController.animateTo(
      horizonalScrollController.position.pixels + px,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  void onPrevious(double px) {
    // state = const AsyncData([]);
    horizonalScrollController.animateTo(
      horizonalScrollController.position.pixels - px,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOut,
    );
  }

  Future<void> _extractAndSaveCategory(
    // Database db,
    List<Category>? list,
  ) async {
    list?.forEach(
      (e) async {
        try {
          await CategoryTable()
              .insertCategory(e.toTableData().toCompanion(true));
          if (e.products != null && e.products!.isNotEmpty) {
            for (var p in e.products!) {
              await ProductTable().insertProduct(p
                  .toTableData()
                  .copyWith(categoryId: Value(e.id))
                  .toCompanion(true));
            }
          }
        } catch (e) {
          // print('error from db: $e');
        }
        await _extractAndSaveCategory(e.children);
      },
    );
  }
}
