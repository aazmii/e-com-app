import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/home.screen/home.screen.dart';

import 'components/footer.dart';

class Wrapper extends ConsumerWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      body: SalesScreen(),
      // body: ref.watch(configProvider).when(
      //       data: (config) {
      //         if (ref.read(configProvider.notifier).isLicenseExpired()) {
      //           return const SalesScreen();
      //         }
      //         // return const HomeScreen();
      //         return LicenseExpiredPage();
      //       },
      //       error: (s, e) => Scaffold(
      //         body: Text('$s, $e'),
      //       ),
      //       loading: () => const Center(
      //         child: CircularProgressIndicator(),
      //       ),
      //     ),
      bottomNavigationBar: Footer(),
    );
  }
}
