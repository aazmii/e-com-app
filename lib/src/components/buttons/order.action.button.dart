import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class OrderActionButton extends StatelessWidget {
  const OrderActionButton({
    super.key,
    this.color,
    this.onPress,
    this.text,
    this.textColor,
  });
  final Color? color, textColor;
  final VoidCallback? onPress;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: color ?? context.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Text(
          text ?? '',
          style: context.titleMedium.copyWith(
            color: textColor ?? Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
