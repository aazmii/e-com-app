import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.dart';
import 'package:pos_sq/src/modules/order.detail/components/app.bar/app.bar.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/view/payment.detail.dart';
import 'package:pos_sq/src/providers/providers.dart';

import '../components/customer.info.fields/customer.info.fields.dart';

class OrderDetail extends ConsumerWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var isCartVisible = ref.watch(isCartVisibleProvider);

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
            if (isCartVisible && context.width > 235)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height20,
                  const CustomerInfoFields(),
                  Text('order id: ${ref.watch(orderProvider)} '),
                  height10,
                  if (ref.watch(orderProvider) != null) const ItemCart(),
                  // if (ref.watch(orderSlProvider) != null) const Cart(),
                ],
              ),
            if (context.width > 280) const PaymentDetailView(),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
