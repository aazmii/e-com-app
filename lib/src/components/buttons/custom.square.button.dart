import 'package:flutter/material.dart';

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
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(margineAll != null ? margineAll! : 0),
        height: size,
        width: size! + 5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Center(child: child),
      ),
    );
  }
}
