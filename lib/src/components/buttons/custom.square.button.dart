import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.size = 20,
    this.onPressed,
    this.icon,
    this.iconColor,
    this.margineAll,
    this.color,
  });
  final double? size;
  final double? margineAll;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(margineAll != null ? margineAll! : 0),
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Icon(
          icon,
          size: size! - 4,
          color: iconColor,
        ),
      ),
    );
  }
}

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    super.key,
    this.size = 20,
    this.onPressed,
    required this.child,
    this.margineAll,
    this.color,
  });
  final double? size;
  final double? margineAll;
  final VoidCallback? onPressed;
  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: IconButton(
        style: IconButton.styleFrom(
          padding: const EdgeInsets.all(2),
          backgroundColor: color ?? context.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        onPressed: () {},
        icon: Center(child: child),
        iconSize: 15.0,
        color: context.secondaryColor,
        focusColor: context.primaryColor,
      ),
    );
  }
}
