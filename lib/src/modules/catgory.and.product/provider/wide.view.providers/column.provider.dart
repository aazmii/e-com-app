import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:sqflite/sqflite.dart';

import 'selected.category.id.provider.dart';

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

  void onTapCategory(
    BuildContext context, {
    required int index,
  }) async {
    // ref.watch(nodeProvider(NodeProvider.searchNode)).requestFocus();
    Category category = state.value![index] as Category;
    if (index == 0) {
      // reset();
      return;
    }
    ref.read(selectedCategoryProvider.notifier).set(category);
    if (ref.read(selectedCategoryProvider)?.id != category.id) {
      _removeNestedItems(category);
      _reposition(context, scrollDownword: false);
    } else {
      final subCategories = await category.getChildren(db);
      if (subCategories.isEmpty) return;
      // if (state.value!.contains(subCategories.first)) return;
      List<dynamic>? tempList = state.value!;
      tempList.insertAll(index + 1, subCategories);

      final products = await category.getProducts(db);
      if (products.isEmpty) {
        state = AsyncData([...tempList]);
        return;
      }
      tempList.insertAll(index + subCategories.length + 1, products);
      state = AsyncData([...tempList]);

      if (context.mounted) {
        _reposition(context, scrollDownword: true);
      }
    }
  }

  List<Category> nestedCategories = [];
  List<Product> nestedProducts = [];
  void _removeNestedItems(Category category) async {
    List<dynamic> tempList = state.value!;

    final subCategoriesFromDb = await category.getChildren(db);
    await _extractChildrenFromDb(db, subCategoriesFromDb);

    print('removing ${nestedProducts.length} products');

    tempList.removeWhere((e) {
      return (e is Category)
          ? nestedCategories.contains(e)
          : nestedProducts.contains(e);
    });

    state = AsyncData([...tempList]);
    nestedCategories.clear();
    nestedProducts.clear();
  }

  Future<void> _extractChildrenFromDb(
    Database db,
    List<Category>? list,
  ) async {
    list?.forEach(
      (e) async {
        nestedCategories.add(e);
        final children = await e.getChildren(db);
        final products = await e.getProducts(db);
        // log('$children');
        // log('$products');

        // nestedCategories.addAll(children);
        // nestedProducts.addAll(products);
        await _extractChildrenFromDb(db, children);
      },
    );
    print('finished with remove list ${nestedProducts.length} products');
  }

  _reposition(
    BuildContext context, {
    required bool scrollDownword,
  }) {
    final minNumbOfCategoryCanFit =
        ((context.height - searchbarAndDraftHeight) / categoryHeight).round();

    if (scrollDownword && state.value!.length <= minNumbOfCategoryCanFit) {
      return;
    }
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollDownword
            ? scrollController.position.pixels + categoryHeight * 1.2
            : scrollController.position.pixels - categoryHeight * 1.2,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }
}
