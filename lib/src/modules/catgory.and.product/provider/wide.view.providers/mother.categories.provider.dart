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
  late Database db;
  @override
  FutureOr<List<Category>> build() async {
    db = await LocalDB().database;
    List<Category> dbCategories = await getCategoriesFromDb();
    if (dbCategories.isEmpty) {
      await initLocalDb(db);
      dbCategories = await getCategoriesFromDb();
    }
    return dbCategories
        .where((e) => (e.parentId == null || e.parentId == 'null'))
        .toList();
  }

  Future<void> initLocalDb(Database db) async {
    final apiCategories = await getProductCategories() ?? [];
    await _extractAndSaveCategory(db, apiCategories);
  }

  Future<List<Category>> getCategoriesFromDb() async {
    return (await LocalDB().getAllData('category')).map((e) {
      return Category.fromMap(e);
    }).toList();
  }

  Future getProductAndChildren() async {}

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
    Database db,
    List<Category>? list,
  ) async {
    list?.forEach(
      (e) async {
        try {
          await e.saveInLocalDb(db);
          if (e.products != null && e.products!.isNotEmpty) {
            for (var p in e.products!) {
              await p.copyWith(categoryId: e.id).saveInLocalDb(db);
            }
          }
        } catch (e) {
          // print('error from db: $e');
        }
        await _extractAndSaveCategory(db, e.children);
      },
    );
  }
}
