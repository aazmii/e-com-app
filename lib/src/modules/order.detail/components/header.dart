import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';

class DispositionHeader extends ConsumerWidget {
  const DispositionHeader({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(configProvider).when(
          data: (d) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  d?.companyName ?? 'Unnamed',
                  style:
                      context.titleMedium.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  d?.companyAddress ?? ' ',
                  style: context.titleMedium,
                ),
              ],
            );
          },
          error: (e, s) => emptyWidget,
          loading: () => emptyWidget,
        );
  }
}
