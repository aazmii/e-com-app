import 'package:flutter/material.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.category,
    this.onSelect,
    required this.isSelected,
  });
  final Category category;
  final VoidCallback? onSelect;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 80),
        margin: EdgeInsets.symmetric(
          // horizontal: category.isExpanded! ? 2 : 14,
          horizontal: isSelected ? 2 : 14,
          vertical: 6,
        ),
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: context.primaryColor.withOpacity(0.6),
          border: Border.all(
            width: 2,
            color: isSelected ? Colors.orange : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        // height: category.isExpanded! ? categoryHeight : categoryHeight - 10,
        height: isSelected ? categoryHeight : categoryHeight - 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                category.label ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const _DisplayImage(),
          ],
        ),
      ),
    );
  }
}

class _DisplayImage extends StatelessWidget {
  const _DisplayImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      height: 80,
      // child: SvgPicture.asset('assets/images/Poke-bowl-pana.svg'),
    );
  }
}
