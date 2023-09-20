import 'package:flutter/material.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'custom.image.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.category,
    this.onSelect,
    required this.isSelected,
    required this.isChild,
    this.onTogglePinnedCategory,
    this.verticalMergin,
  });
  final Category category;
  final VoidCallback? onSelect;
  final bool isSelected;
  final bool isChild;
  final double? verticalMergin;
  final void Function(VisibilityInfo)? onTogglePinnedCategory;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey(category.id),
      onVisibilityChanged: onTogglePinnedCategory,
      child: GestureDetector(
        onTap: onSelect,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: EdgeInsets.symmetric(
            horizontal: isSelected ? 0 : 5,
            vertical: verticalMergin ?? 4,
          ),
          decoration: BoxDecoration(
            color: categoryCardColor,
            border: isSelected || isChild ? _selectedBorder : null,
          ),
          height: isSelected ? categoryHeight + 8 : categoryHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryTitle(label: category.label),
              Expanded(
                child: CustomImage(
                  imageUrl: category.categoryFiles!.isNotEmpty
                      ? category.categoryFiles!.first?.image
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      color: context.secondaryColor,
      width: double.infinity,
      child: Center(
        child: Text(
          label ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

final _selectedBorder = Border.all(
  width: 2,
  color: Colors.orange,
);
