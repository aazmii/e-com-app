import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/methods.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'selected.category.id.provider.dart';

final columnProvider =
    AsyncNotifierProviderFamily<_ColumnProvider, List<dynamic>, Category>(
  _ColumnProvider.new,
);

class _ColumnProvider extends FamilyAsyncNotifier<List<dynamic>, Category> {
  late final List<dynamic> defultState;

  @override
  Future<List<dynamic>> build(Category motherCategory) async {
    final subCategories = motherCategory.children ?? [];
    final products = motherCategory.products ?? [];

    defultState = [
      motherCategory,
      ...subCategories,
      ...products,
    ];
    return defultState;
  }

  Category? pinnedCategory;

  void onTogglePinnedCategory(Category category, VisibilityInfo info) {
    if (category != ref.read(selectedCategoryProvider)) return;
    var visiblePercentage = info.visibleFraction * 100;
    if (visiblePercentage == 0) {
      pinnedCategory = category;
    } else {
      pinnedCategory = null;
    }
    ref.notifyListeners();
  }

  List<dynamic> deletableCategoryAndProduct = [];
  int? prevIndex;
  final scrollController = ScrollController();

  void onTapCategory(
    BuildContext context, {
    required int index,
  }) async {
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
      final subCategories = await category.getChildren();
      // if (subCategories.isEmpty) return;//?
      if (hasCommonElements(state.value!, subCategories)) return;

      List<dynamic>? tempList = state.value!;
      tempList.insertAll(index + 1, subCategories);

      final products = await category.getProducts();
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

  void _removeNestedItems(Category category) async {
    // List<dynamic> tempList = state.value!;
    // final nestedCategories = await getAllNestedCategories(db, category);
    // final nestedProducts = await getAllProducts(
    //   db,
    //   [category, ...nestedCategories],
    // );

    // tempList.removeWhere((e) {
    //   return e is Category
    //       ? nestedCategories.contains(e)
    //       : nestedProducts.contains(e);
    // });

    // state = AsyncData([...tempList]);
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
