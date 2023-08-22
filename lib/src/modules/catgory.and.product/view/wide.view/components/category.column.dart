import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/column.provider.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/selected.category.id.provider.dart';

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
    final subCagetoryOrProduct = ref.watch(columnProvider(category));

    final notifier = ref.watch(columnProvider(category).notifier);

    return subCagetoryOrProduct.when(
        data: (d) {
          return ListView.builder(
            itemCount: d.length,
            controller: notifier.scrollController,
            itemBuilder: (context, index) {
              final categoryOrProduct = d[index];
              if (categoryOrProduct is Category) {
                final selectedId = ref.watch(selectedCategoryProvider)?.id;
                return CategoryContainer(
                  category: categoryOrProduct,
                  onSelect: () => notifier.onTapCategory(context, index: index),
                  // notifier.onSelectCategory(context, index: index),
                  isSelected: selectedId == categoryOrProduct.id,
                  isChild: selectedId == categoryOrProduct.parentId,
                );
              }
              if (categoryOrProduct is Product) {
                return ProductCard(
                  onSelect: () async {},
                  product: categoryOrProduct,
                  isLastItem: d.last == categoryOrProduct,
                );
              } else {
                return emptyWidget;
              }
            },
          );
        },
        error: (e, s) => Text('Error: $e'),
        loading: () => Text('Loading'));
  }
}
