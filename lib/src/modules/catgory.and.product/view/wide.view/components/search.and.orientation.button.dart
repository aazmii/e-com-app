import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/view/wide.view/components/search.field.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
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
          onPressed: () async {
            ref.read(orderProvider.notifier).removeAndResetOrder(1);
          },
          icon: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
