import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.2.dart';
import 'package:pos_sq/src/modules/catgory.and.product/api/category.api.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/view/payment.detail.dart';
import 'package:pos_sq/src/providers/providers.dart';

import '../components/customer.info.fields/customer.info.fields.dart';

class OrderDetail extends ConsumerWidget {
  const OrderDetail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    var isCartVisible = ref.watch(isCartVisibleProvider);

    return Scaffold(
      // appBar: const OrderDetailAppBar(),
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DriftDbViewer(db),
                ),
              ),
              icon: const Icon(Icons.remove_red_eye_sharp),
            ),
            IconButton(
              onPressed: () async {},
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
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
                children: [
                  height20,
                  const CustomerInfoFields(),
                  height10,
                  if (ref.watch(orderSlProvider) != null) const NewCart(),
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
