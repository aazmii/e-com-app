import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/modules/catgory.and.product/api/category.api.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:sqflite/sqflite.dart';

ScrollController horizonalScrollController = ScrollController();

final motherCategoriesProvider =
    AsyncNotifierProvider<ApiCategoryProvider, List<Category>>(
  ApiCategoryProvider.new,
);

class ApiCategoryProvider extends AsyncNotifier<List<Category>> {
  List<Category> categoriesWithParentId = [];

  LocalDB? db;
  @override
  FutureOr<List<Category>> build() async {
    final db = await LocalDB().database;
    final categories = await getProductCategories() ?? [];
    for (var c in categories) {
      insertParentIdBelongingCategoryId(db, c);
    }
    return categoriesWithParentId;
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

  void insertParentIdBelongingCategoryId(Database db, Category category) {
    if (category.children != null) {
      _setParentId(db, category.children, category.id);
      //?seems fine
      // modifiedCategory.forEach((e) {
      //   print(e.parentId);
      // });
    }
  }

  void _setParentId(Database db, List<Category>? list, String? parentId) async {
    list?.forEach(
      (e) async {
        final categoryWithParentId = e.copyWith(parentId: parentId);
        if (e.products != null && e.products!.isNotEmpty) {
          for (var p in e.products!) {
            await p
                .copyWith(
                  categoryId: e.id,
                  categoryLabel: e.label,
                )
                .saveInLocalDb(db);
          }
        }
        categoryWithParentId.saveInLocalDb(db);
        categoriesWithParentId.add(categoryWithParentId);
        _setParentId(db, e.children, e.id);
      },
    );
  }
}
