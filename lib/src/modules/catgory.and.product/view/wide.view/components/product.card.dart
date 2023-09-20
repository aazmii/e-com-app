import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/selected.category.id.provider.dart';

import 'custom.image.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onSelect,
    required this.isLastItem,
  });
  final bool isLastItem;
  final Product product;
  final VoidCallback? onSelect;
  @override
  Widget build(BuildContext context, ref) {
    final categoryId = product.categoryId ?? false;
    return InkWell(
      splashColor: context.secondaryColor,
      onTap: onSelect,
      child: Padding(
        // padding: EdgeInsets.only(bottom: isLastItem ? 120 : 0),
        padding: const EdgeInsets.only(bottom: 0),
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: expandDuration),
              margin: EdgeInsets.symmetric(
                horizontal:
                    ref.watch(selectedCategoryProvider)?.id == categoryId
                        ? 12
                        : 2,
              ),
              height: categoryHeight - 30,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Card(
                      shape: ref.watch(selectedCategoryProvider)?.id ==
                              product.categoryId
                          ? _selectedBorder
                          : null,
                      child: CustomImage(
                        imageUrl: product.files!.isNotEmpty
                            ? product.files!.first.image
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              product.label ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

const _selectedBorder = RoundedRectangleBorder(
  side: BorderSide(
    width: 1,
    color: Colors.orange,
  ),
);
