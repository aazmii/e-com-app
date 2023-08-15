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
        // padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border.all(
            width: 0,
            color: isSelected ? Colors.orange : Colors.transparent,
          ),
        ),
        // height: category.isExpanded! ? categoryHeight : categoryHeight - 10,
        height: isSelected ? categoryHeight : categoryHeight - 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _DisplayImage(),
            Container(
              height: 25,
              color: context.secondaryColor,
              width: double.infinity,
              child: Center(
                child: Text(
                  category.label ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            )
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
      // height: 70,
      // child: SvgPicture.asset('assets/images/Poke-bowl-pana.svg'),
    );
  }
}
