import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/catgory.and.product/api/category.api.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category.dart';

ScrollController horizonalScrollController = ScrollController();

final motherCategoriesProvider =
    AsyncNotifierProvider<ApiCategoryProvider, List<Category>>(
  ApiCategoryProvider.new,
);

class ApiCategoryProvider extends AsyncNotifier<List<Category>> {
  @override
  FutureOr<List<Category>> build() async {
    return await getProductCategories() ?? [];
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
