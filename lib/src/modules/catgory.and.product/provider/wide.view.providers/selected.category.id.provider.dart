import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/category/category.dart';

final selectedCategoryProvider =
    NotifierProvider<SelectedCategoryIdProvider, Category?>(
  SelectedCategoryIdProvider.new,
);

class SelectedCategoryIdProvider extends Notifier<Category?> {
  @override
  Category? build() => null;
  set(Category? s) => state?.id == s?.id ? state = null : state = s;
}
