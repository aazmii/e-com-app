import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/components/buttons/order.action.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
import 'package:pos_sq/src/modules/order.detail/provider/providers.dart';
import 'package:pos_sq/src/modules/payment.detail/view/wide.view.dart';
import 'package:pos_sq/src/providers/methods.dart';

import '../model/payment.detail.dart';

TableRow actionButtons(
  WidgetRef ref,
  BuildContext context,
  List<PaymentDetail>? payemnts,
) {
  return TableRow(
    children: [
      const SizedBox.shrink(),
      Table(
        columnWidths: const {
          0: FlexColumnWidth(0.6),
          1: FlexColumnWidth(0.6),
          2: FlexColumnWidth(0.2),
        },
        border: tableBorder,
        children: [
          TableRow(
            children: [
              SizedBox(
                height: tableColumnHeight + 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 8,
                  ),
                  child: OrderActionButton(
                    text: 'New Order',
                    color: Colors.yellow,
                    textColor: Colors.black,
                    onPress: () async {
                      await ref
                          .read(orderProvider.notifier)
                          .onPressNewOrder(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: tableColumnHeight + 40,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OrderActionButton(
                    color: Colors.transparent,
                    textColor: Colors.black,
                    text: 'Print',
                    onPress: () {},
                  ),
                ),
              ),
              emptyWidget,
            ],
          ),
          TableRow(children: [
            SizedBox(
              height: tableColumnHeight,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: payemnts != null
                    ? ref.watch(selectedOrderStream).when(
                        data: (order) {
                          final returnAmount = findBalance(payemnts,
                              payemnts.length - 1, order.netTotal ?? 0);
                          return returnAmount < 0
                              ? Text(
                                  'Return Amount: BDT ${returnAmount.abs().formatted}',
                                  textAlign: TextAlign.end,
                                )
                              : const Text(
                                  'Return Amount: BDT 0.00',
                                  textAlign: TextAlign.end,
                                );
                        },
                        error: (e, s) => emptyWidget,
                        loading: () => emptyWidget)
                    : emptyWidget,
                // child: Text(
                //   'Return Amount\nBDT 120',
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 23, top: 10, left: 5),
              child: OrderActionButton(
                text: 'Discard',
                color: Colors.red,
                onPress: ref.read(orderProvider.notifier).onPressDiscard,
              ),
            ),
            emptyWidget,
          ]),
        ],
      )
    ],
  );
}
