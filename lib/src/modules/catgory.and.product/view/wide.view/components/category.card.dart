import 'package:flutter/material.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({
    super.key,
    required this.category,
    this.onSelect,
    required this.isSelected,
    required this.isChild,
    this.onTogglePinnedCategory,
  });
  final Category category;
  final VoidCallback? onSelect;
  final bool isSelected;
  final bool isChild;
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
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            border: isSelected || isChild ? _selectedBorder : null,
          ),
          height: isSelected ? categoryHeight + 8 : categoryHeight,
          child: Column(
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
      ),
    );
  }
}

final _selectedBorder = Border.all(
  width: 2,
  color: Colors.orange,
);

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
