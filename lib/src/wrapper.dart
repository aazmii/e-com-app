import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/home.screen/home.screen.dart';
import 'package:pos_sq/src/modules/license.expire.and.renew/license.expired.page.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'package:pos_sq/src/providers/methods.dart';
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
      ref.read(orderSlProvider.notifier).set(await getSelectedOrderSerial());
      return true;
    } catch (e) {
      print('error : $e');
      return false;
    }
  }
}
