import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapse.button.dart';
import 'package:pos_sq/src/providers/order.provider.dart';

class CollapsedView extends ConsumerWidget {
  const CollapsedView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () async {
              await ref.read(orderProvider.notifier).onNewOrder();
            },
            child: const Text('New Order')),
        Text(
          'Net Total: BDT 34.50',
          style: context.text.headlineMedium,
        ),
        width20,
        CartStateButton(
          onPressed: ref.read(cartStateProvider.notifier).toggleCartState,
        )
      ],
    );
  }
}
