import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/disocunt.button.dart';

class DiscountTypeButtons extends ConsumerWidget {
  const DiscountTypeButtons({
    super.key,
    required this.order,
    required this.isActive,
  });
  final Order order;
  final bool isActive;
  @override
  Widget build(BuildContext context, ref) {
    return Row(
      children: [
        DiscountTypeButton(
          isSelected: order.discountType == DiscountType.cash,
          onPressed: !isActive
              ? () => context.showSnack('No order is selected')
              : () {},
          child: const Text(
            '৳',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        width10,
        DiscountTypeButton(
          isSelected: order.discountType == DiscountType.percentage,
          onPressed: !isActive
              ? () => context.showSnack('No order is selected')
              : () {},
          child: const Text(
            '%',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
