import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/home.screen/home.screen.dart';
import 'package:pos_sq/src/modules/license.expire.and.renew/license.expired.page.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';

import 'components/footer.dart';
import 'modules/configuration/provider/configuration.provider.dart';

class Wrapper extends ConsumerWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: ref.watch(configProvider).when(
            data: (config) {
              if (ref.read(configProvider.notifier).isLicenseExpired()) {
                return FutureBuilder(
                  future: setCurrentOrder(ref),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const CircularProgressIndicator();
                    }
                    if (snapshot.data != null && snapshot.data!) {
                      return const SalesScreen();
                    } else {
                      return emptyWidget;
                    }
                  },
                );
              }
              // return const HomeScreen();
              return LicenseExpiredPage();
            },
            error: (s, e) => Scaffold(
              body: Text('$s, $e'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      bottomNavigationBar: const Footer(),
    );
  }

  Future<bool> setCurrentOrder(WidgetRef ref) async {
    try {
      final orders = await OrderTable.getAllOrders();
      if (orders.isEmpty) {
        ref.read(orderProvider.notifier).reset();
      } else {
        ref.read(orderProvider.notifier).set(orders.last.sl);
      }
      return true;
    } catch (e) {
      debugPrint('error : $e');
      return false;
    }
  }
}
