import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';

import 'selected.category.id.provider.dart';

final motherCategoryProvider =
    NotifierProviderFamily<_CategoryColumnProvider, List<dynamic>, Category>(
  _CategoryColumnProvider.new,
);

class _CategoryColumnProvider extends FamilyNotifier<List<dynamic>, Category> {
  late final List<dynamic> defultState;
  @override
  List<dynamic> build(Category motherCategory) {
    defultState = [
      motherCategory,
      if (motherCategory.children != null)
        ...List.generate(motherCategory.children!.length,
            (i) => motherCategory.children![i]),
      if (motherCategory.products != null)
        ...List.generate(motherCategory.products!.length,
            (i) => motherCategory.products![i]),
    ];
    return defultState;
  }

  List<dynamic> deletableCategoryAndProduct = [];
  int? prevIndex;
  final scrollController = ScrollController();

  void onSelectCategory(
    BuildContext context, {
    required int index,
  }) {
    // ref.watch(nodeProvider(NodeProvider.searchNode)).requestFocus();
    Category category = state[index] as Category;

    if (index == 0) {
      // reset();
      return;
    }

    ref.read(selectedCategoryProvider.notifier).set(category);
    if (ref.read(selectedCategoryProvider)?.id != category.id) {
      _removeNestedItems(category);
      _reposition(context, scrollDownword: false);
    } else {
      List<dynamic> tempList = state;
      if (index != state.length - 1) {
        if (category.children == null) return;
      }
      final subCategories = category.children;
      if (subCategories == null) return;
      if (category.children != null && category.children!.isNotEmpty) {
        if (state.contains(category.children!.first)) return;
      }
      tempList.insertAll(index + 1, subCategories);
      state = [...tempList];
      _addProductsFromIndex(
        insertIndex: index + subCategories.length + 1,
        selectedIndex: index,
      );
      _reposition(context, scrollDownword: true);
    }
  }

  _reposition(
    BuildContext context, {
    required bool scrollDownword,
  }) {
    final minNumbOfCategoryCanFit =
        ((context.height - searchbarAndDraftHeight) / categoryHeight).round();

    if (scrollDownword && state.length <= minNumbOfCategoryCanFit) return;
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

  // void reset() {
  //   Category? category = state[0] as Category?;
  //   ref
  //       .read(selectedCategoryProvider.notifier)
  //       .set(ref.read(selectedCategoryProvider) == null ? category : null);

  //   final newState = [
  //     state.first,
  //     ...category!.children!.map((e) {
  //       return e.copyWith(isExpanded: false);
  //     }).toList(),
  //     ...category.products as List<Product>
  //   ];
  //   state = newState;
  // }

  void _addProductsFromIndex({
    required int insertIndex,
    required int selectedIndex,
  }) {
    Category category = state[selectedIndex] as Category;
    if (category.products == null) return;
    List<dynamic> tempList = state;
    tempList.insertAll(insertIndex, category.products!);
    state = [...tempList];
  }

  void _removeNestedItems(Category category) {
    void extractCategories(List<Category>? list) {
      list?.forEach(
        (e) {
          deletableCategoryAndProduct.add(e);
          if (e.products != null) {
            deletableCategoryAndProduct.addAll(e.products!);
          }
          extractCategories(e.children);
        },
      );
    }

    List<dynamic> tempList = state;
    extractCategories(category.children);
    tempList.removeWhere((e) {
      return deletableCategoryAndProduct.contains(e);
    });
    tempList.removeWhere((e) => category.products!.contains(e));
    state = [...tempList];
    deletableCategoryAndProduct.clear();
  }
}
