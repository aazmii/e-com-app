import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.size = 20,
    this.onPressed,
    this.icon,
    this.iconColor,
    this.margineAll,
    this.backgroundColor,
  });
  final double? size;
  final double? margineAll;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(margineAll != null ? margineAll! : 0),
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: backgroundColor,
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

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    this.size = 20,
    this.onPressed,
    required this.icon,
    this.iconColor,
    this.margineAll,
    this.backgroundColor,
  });
  final double? size;
  final double? margineAll;
  final VoidCallback? onPressed;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(margineAll != null ? margineAll! : 0),
        height: size,
        width: size! + 5,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(2),
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
