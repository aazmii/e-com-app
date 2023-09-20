import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/calculation/view/calculation.table.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapse.button.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapsed.view.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/order.detail/provider/providers.dart';

import '../provider/cart.stream.dart';
import 'components/cart.table.header.dart';
import 'components/custom.item.row.dart';
import 'components/item.row.dart';

final columnTitleAndItemWidth = {
  0: const FlexColumnWidth(0.5),
  1: const FlexColumnWidth(2.5),
  2: const FlexColumnWidth(2),
  3: const FlexColumnWidth(1.5),
  4: const FlexColumnWidth(2.5),
};

class ItemCart extends ConsumerWidget {
  const ItemCart({super.key});

  final rootColumnWidth = const {
    0: FlexColumnWidth(6),
    1: FlexColumnWidth(1),
  };

  get loading => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(allItemStream).when(
          data: (allItmes) {
            if (ref.watch(cartStateProvider) == CartState.collapsed) {
              return const CollapsedView();
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        border: TableBorder.all(
                          color: Colors.grey.shade300,
                        ),
                        columnWidths: rootColumnWidth,
                        children: [
                          tableHeader(context),
                          ...ref.watch(defaultItemStream).when(
                                data: (items) {
                                  return List.generate(
                                    items.length,
                                    (i) {
                                      if (!items[i].isCustomItem!) {
                                        return buildItemRow(
                                          ref,
                                          i + 1,
                                          items[i],
                                        );
                                      } else {
                                        return const TableRow(
                                          children: [emptyWidget],
                                        );
                                      }
                                    },
                                  );
                                },
                                error: (e, s) => [
                                  const TableRow(children: [emptyWidget])
                                ],
                                loading: () => [
                                  const TableRow(children: [emptyWidget])
                                ],
                              ),
                          ...ref.watch(customItemStream).when(
                                data: (items) {
                                  return List.generate(
                                    items.length,
                                    (i) => customItemRow(
                                      ref,
                                      allItmes.length - items.length + i + 1,
                                      items[i],
                                      items.length - 1 == i,
                                    ),
                                  );
                                },
                                error: (e, s) => [
                                  const TableRow(children: [emptyWidget])
                                ],
                                loading: () => [
                                  const TableRow(children: [emptyWidget])
                                ],
                              ),
                        ],
                      ),
                      ref.watch(selectedOrderStream).when(
                            data: (order) {
                              return calculatoinTable(
                                context,
                                ref,
                                allItmes.grossTotal,
                                allItmes.totalVat,
                                Order.fromTableData(order),
                                allItmes.length > 1
                                    ? allItmes
                                        .totalTax(config?.taxPercentage ?? 0)
                                    : null,
                              );
                            },
                            error: (e, s) => const SizedBox(),
                            loading: () => emptyWidget,
                          ),
                    ],
                  ),
                  height10,
                  CartStateButton(
                    onPressed:
                        ref.read(cartStateProvider.notifier).toggleCartState,
                  ),
                ],
              );
            }
          },
          error: (e, s) => Text('error $e'),
          loading: () => const Text('Cart being ready..'),
        );
  }
}

List<Item> getCustomItems(List<Item> items) {
  return items.where((item) {
    return item.isCustomItem != null && item.isCustomItem!;
  }).toList();
}

List<Item> getApiRetrivedItems(List<Item> items) => items
    .where((item) => item.isCustomItem == null || !item.isCustomItem!)
    .toList();
 
// void setCustomItemData(WidgetRef ref, Item item) {
//   ref.watch(tecProvider(TECProvider.itemName)).text = item.name ?? '';
//   ref.watch(tecProvider(TECProvider.itemPrice)).text = item.price.formatted;
//   ref.watch(tecProvider(TECProvider.itemVat)).text = item.vat.formatted;
// }
