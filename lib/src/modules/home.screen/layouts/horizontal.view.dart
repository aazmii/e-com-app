import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/view/wide.view/category.and.product.dart';
import 'package:pos_sq/src/modules/order.detail/components/header.dart';
import 'package:pos_sq/src/providers/providers.dart';

class HorizontalView extends ConsumerWidget {
  const HorizontalView({
    super.key,
    this.motherCategories,
  });
  final List<Category>? motherCategories;

  @override
  Widget build(BuildContext context, ref) {
    var isBool = ref.watch(isCartVisibleProvider);
    return Row(
      children: [
        Expanded(
          flex: context.width < 1350 ? 6 : 5,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (context.isMobileWidth)
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
              const DispositionHeader(),
              AnimatedSize(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear,
                child: isBool
                    ? Column(
                        children: [
                          if (context.width > 235)
                            const Text('cart'),
                          height20,
                          if (context.width > 235)
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Text('summary'),
                            ),
                          height10,
                        ],
                      )
                    : const SizedBox(),
              ),
            ],
          ),
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
