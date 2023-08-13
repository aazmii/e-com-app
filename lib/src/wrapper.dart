import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'components/footer.dart';
import 'modules/configuration/provider/configuration.provider.dart';
import 'modules/home.screen/home.screen.dart';
import 'modules/license.expire.and.renew/license.expired.page.dart';

class Wrapper extends ConsumerWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      drawer: const Drawer(
        child: Text('hello'),
      ),
      body: ref.watch(configProvider).when(
            data: (config) {
              if (ref.read(configProvider.notifier).isLicenseExpired()) {
                return const SalesScreen();
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
}
