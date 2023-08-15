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
  LocalDB? db;
  @override
  FutureOr<List<Category>> build() async {
    final productAndCategories = await getProductCategories() ?? [];

    return productAndCategories;
  }

  Future insertProduct(Database db) async {
    await Product().inertIntoDb(db);
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
}
