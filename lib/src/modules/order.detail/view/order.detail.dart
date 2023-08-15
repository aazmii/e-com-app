import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/models/provider/order.provider.dart';
import 'package:pos_sq/src/modules/order.detail/components/app.bar/app.bar.dart';
import 'package:pos_sq/src/modules/order.detail/components/drawer/drawer.dart';
import 'package:pos_sq/src/modules/order.detail/provider/provider.dart';

class OrderDetail extends ConsumerWidget {
  OrderDetail({super.key});
  LocalDB? db;

  @override
  Widget build(BuildContext context, ref) {
    var isCartVisible = ref.watch(isCartVisibleProvider);
    var orderNotifier = ref.watch(orderProvider);

    return Scaffold(
      appBar: const OrderDetailAppBar(),
      drawer: const AppDrawer(),
      body: ListView(
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
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
            child: (isCartVisible && context.width > 235)
                ? Column(
                    children: [
                      const Text('cart'),
                      height20,
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text('summary'),
                      ),
                      height10,
                      ElevatedButton(
                        onPressed: () {
                          ref.read(orderProvider.notifier).createtable();
                        },
                        child: const Text('Save Order'),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
