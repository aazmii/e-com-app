import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class DiscountTypeButton extends StatelessWidget {
  const DiscountTypeButton({
    super.key,
    this.onPressed,
    required this.isSelected,
    this.child,
  });
  final VoidCallback? onPressed;
  final bool isSelected;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isSelected ? 34 : 30,
        width: isSelected ? 28 : 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            // color: isSelected ? Colors.transparent : context.primaryColor,
            width: 1,
          ),
          color: isSelected ? context.primaryColor : Colors.transparent,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
