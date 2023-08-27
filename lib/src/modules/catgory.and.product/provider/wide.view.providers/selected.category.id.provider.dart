import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';

final selectedCategoryProvider =
    NotifierProvider<SelectedCategoryIdProvider, Category?>(
  SelectedCategoryIdProvider.new,
);

class SelectedCategoryIdProvider extends Notifier<Category?> {
  @override
  Category? build() => null;
  set(Category? s) => state?.id == s?.id ? state = null : state = s;
}
