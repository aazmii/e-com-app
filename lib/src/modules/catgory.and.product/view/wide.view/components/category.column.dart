import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/column.provider.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../provider/wide.view.providers/selected.category.id.provider.dart';
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
        data: (dynamicList) {
          final categrories = dynamicList.whereType<Category>().toList();
          return Stack(
            children: [
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    elevation: 0.0,
                    pinned: true,
                    collapsedHeight: categoryHeight,
                    expandedHeight: categoryHeight,
                    backgroundColor: Colors.transparent,
                    flexibleSpace: CategoryContainer(
                      category: category,
                      isSelected: false,
                      isChild: false,
                      onSelect: () {
                        ref
                            .read(selectedCategoryProvider.notifier)
                            .set(category);
                      },
                    ),
                  ),
                  SliverList.builder(
                    itemCount: dynamicList.length,
                    itemBuilder: (context, index) {
                      if (index == 0) return emptyWidget;
                      final categoryOrProduct = dynamicList[index];
                      if (categoryOrProduct is Category) {
                        final selectedId =
                            ref.watch(selectedCategoryProvider)?.id;
                        return CategoryContainer(
                          category: categoryOrProduct,
                          onSelect: () => {},
                          isSelected: selectedId == categoryOrProduct.id,
                          isChild: selectedId == categoryOrProduct.parent?.id,
                          onTogglePinnedCategory: (info) {
                            notifier.onTogglePinnedCategory(
                              categoryOrProduct,
                              info,
                            );
                          },
                        );
                      }
                      if (categoryOrProduct is Product) {
                        return ProductCard(
                          onSelect: () async => ref
                              .read(orderSlProvider.notifier)
                              .onItemPress(categoryOrProduct),
                          product: categoryOrProduct,
                          isLastItem: dynamicList.last == categoryOrProduct,
                        );
                      } else {
                        return emptyWidget;
                      }
                    },
                  )
                ],
              ),
              if (notifier.pinnedCategory != null &&
                  categrories.contains(ref.watch(selectedCategoryProvider)))
                CategoryContainer(
                  category: notifier.pinnedCategory!,
                  isSelected: true,
                  isChild: false,
                  verticalMergin: 0,
                ),
            ],
          );
          // return Stack(
          //   children: [
          //     ListView.builder(
          //       itemCount: d.length,
          //       controller: notifier.scrollController,
          //       itemBuilder: (context, index) {
          //         final categoryOrProduct = d[index];
          //         if (categoryOrProduct is Category) {
          //           final selectedId = ref.watch(selectedCategoryProvider)?.id;
          //           return CategoryContainer(
          //             category: categoryOrProduct,
          //             onSelect: () =>
          //                 notifier.onTapCategory(context, index: index),
          //             isSelected: selectedId == categoryOrProduct.id,
          //             isChild: selectedId == categoryOrProduct.parentId,
          //             onTogglePinnedCategory: (info) {
          //               notifier.onTogglePinnedCategory(
          //                 categoryOrProduct,
          //                 info,
          //               );
          //             },
          //           );
          //         }
          //         if (categoryOrProduct is Product) {
          //           return ProductCard(
          //             onSelect: () async {},
          //             product: categoryOrProduct,
          //             isLastItem: d.last == categoryOrProduct,
          //           );
          //         } else {
          //           return emptyWidget;
          //         }
          //       },
          //     ),
          //     if (notifier.pinnedCategory == null)
          //       CategoryContainer(
          //         category: category,
          //         isSelected: false,
          //         isChild: false,
          //       ),
          //     if (notifier.pinnedCategory != null &&
          //         categrories.contains(ref.watch(selectedCategoryProvider)))
          //       CategoryContainer(
          //         category: notifier.pinnedCategory!,
          //         isSelected: true,
          //         isChild: false,
          //         verticalMergin: 0,
          //       ),
          //   ],
          // );
        },
        error: (e, s) {
          return Text('Error: $e');
        },
        loading: () => const Text('Loading'));
  }

  bool notInViewport(VisibilityInfo info) {
    final visiblePercentage = info.visibleFraction * 100;
    return visiblePercentage == 0;
  }
}
