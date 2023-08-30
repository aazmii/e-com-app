import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/cart.dart';
import 'package:pos_sq/src/modules/order.detail/components/app.bar/app.bar.dart';
import 'package:pos_sq/src/providers/providers.dart';

import '../components/customer.info.fields/customer.info.fields.dart';

class OrderDetail extends ConsumerWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var isCartVisible = ref.watch(isCartVisibleProvider);
    // var orderNotifier = ref.watch(orderProvider);

    return Scaffold(
      appBar: const OrderDetailAppBar(),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.secondaryColor,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
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
            (isCartVisible && context.width > 235)
                ? const Column(
                    children: [
                      height20,
                      CustomerInfoFields(),
                      height10,
                      Cart(),
                      // CartTable()
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
