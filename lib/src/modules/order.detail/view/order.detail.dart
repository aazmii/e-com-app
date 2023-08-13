import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/components/header.dart';
import 'package:pos_sq/src/modules/order.detail/provider/provider.dart';

class OrderDetail extends ConsumerWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var isCartVisible = ref.watch(isCartVisibleProvider);
    return ListView(
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
          child: (isCartVisible && context.width > 235)
              ? const Column(
                  children: [
                    Text('cart'),
                    height20,
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('summary'),
                    ),
                    height10,
                  ],
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
