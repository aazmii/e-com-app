import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/mother.categories.provider.dart';
import 'package:pos_sq/src/providers/orientation.provider.dart';
 

class ScrollNavigationButotns extends ConsumerWidget {
  const ScrollNavigationButotns({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isHorizontal = ref.watch(layoutProvider) == AppLayout.horizontalView;
    final jumpPixel = isHorizontal ? context.width / 4 : context.width / 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: context.secondaryColor,
            child: IconButton(
              onPressed: () => ref
                  .read(motherCategoriesProvider.notifier)
                  .onPrevious(
                      context.isMobileWidth ? context.width / 2 : jumpPixel),
              icon: const Icon(FontAwesomeIcons.angleLeft),
            ),
          ),
          CircleAvatar(
            backgroundColor: context.secondaryColor,
            child: IconButton(
              onPressed: () {
                ref.read(motherCategoriesProvider.notifier).onNext(
                    context.isMobileWidth ? context.width / 2 : jumpPixel);
              },
              icon: const Icon(FontAwesomeIcons.angleRight),
            ),
          ),
        ],
      ),
    );
  }
}
