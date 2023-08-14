import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/view/wide.view/category.and.product.dart';
import 'package:pos_sq/src/modules/order.detail/view/order.detail.dart';

class HorizontalView extends ConsumerWidget {
  const HorizontalView({
    super.key,
    this.motherCategories,
  });
  final List<Category>? motherCategories;

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      children: [
        Expanded(
          flex: context.width < 1350 ? 6 : 5,
          child: const OrderDetail(),
        ),
        width10,
        Expanded(
          flex: 7,
          child: motherCategories != null
              ? CategoryView(motherCategories: motherCategories)
              : emptyWidget,
        ),
      ],
    );
  }
}
