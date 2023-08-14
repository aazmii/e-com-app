import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/mother.category.providier.dart';

import 'category.card.dart';
import 'product.card.dart';

class VerticalSCrollableCategoryColumn extends ConsumerWidget {
  const VerticalSCrollableCategoryColumn({
    super.key,
    required this.category,
  });
  final Category category;
  @override
  Widget build(BuildContext context, ref) {
    final subCagetoryOrProduct = ref.watch(motherCategoryProvider(category));

    final notifier = ref.watch(motherCategoryProvider(category).notifier);

    return ListView.builder(
      itemCount: subCagetoryOrProduct.length,
      controller: notifier.scrollController,
      itemBuilder: (context, index) {
        final categoryOrProduct = subCagetoryOrProduct[index];
        if (categoryOrProduct is Category) {
          return CategoryContainer(
            category: categoryOrProduct,
            onSelect: () => notifier.onSelectCategory(context, index: index),
            isSelected: false,
          );
        }
        if (categoryOrProduct is Product) {
          return ProductCard(
            onSelect: () async {},
            product: categoryOrProduct,
            isLastItem: subCagetoryOrProduct.last == categoryOrProduct,
          );
        } else {
          return emptyWidget;
        }
      },
    );
  }
}
