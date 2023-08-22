import 'package:flutter/material.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
class CategoryContainer extends StatelessWidget {
  const CategoryContainer(
      {super.key,
      required this.category,
      this.onSelect,
      required this.isSelected,
      required this.isChild});
  final Category category;
  final VoidCallback? onSelect;
  final bool isSelected;
  final bool isChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(
          horizontal: isSelected ? 0 : 5,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          border: Border.all(
            width: 0,
            color: isSelected || isChild ? Colors.orange : Colors.transparent,
          ),
        ),
        height: categoryHeight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _DisplayImage(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 1),
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
