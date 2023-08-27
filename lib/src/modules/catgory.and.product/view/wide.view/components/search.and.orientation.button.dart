import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/view/wide.view/components/search.field.dart';
import 'package:pos_sq/src/providers/orientation.provider.dart';

class SearchAndOrientationButton extends ConsumerWidget {
  const SearchAndOrientationButton({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      children: [
        context.isWide
            ? Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () => ref.read(layoutProvider.notifier).toggle(),
                  icon: Icon(
                    ref.watch(layoutProvider) == AppLayout.horizontalView
                        ? FontAwesomeIcons.upRightAndDownLeftFromCenter
                        : FontAwesomeIcons.downLeftAndUpRightToCenter,
                    color: context.primaryColor,
                  ),
                ),
              )
            : emptyWidget,
        const Expanded(
          child: SearchField(),
        ),
      ],
    );
  }
}
