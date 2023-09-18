import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/calculation/view/calculation.table.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapse.button.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapsed.view.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/custom.item.row.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'package:pos_sq/src/modules/order.detail/provider/providers.dart';

import '../provider/cart.stream.dart';
import 'components/cart.table.header.dart';

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(cartStream).when(
          data: (items) {
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
                          ...List.generate(
                            items.length,
                            (i) {
                              return i == 0
                                  ? const TableRow(children: [emptyWidget])
                                  : buildItemRow(ref, i, items[i]);
                            },
                          ),
                          customItemRow(ref, items.length, items.first),
                        ],
                      ),
                      ref.watch(selectedOrderStream).when(
                            data: (order) {
                              return calculatoinTable(
                                context,
                                ref,
                                items,
                                Order.fromTableData(order),
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

  TableRow buildItemRow(WidgetRef ref, int i, Item item) {
    final count = item.count ?? 1;
    final price = item.price ?? 0;

    return TableRow(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: columnTitleAndItemWidth,
          border: TableBorder.all(color: Colors.grey.shade300),
          children: [
            TableRow(
              decoration: BoxDecoration(
                color:
                    i % 2 != 0 ? const Color(0xffFCFCFC) : Colors.transparent,
              ),
              children: [
                TableCell(
                  child: Center(child: Text('$i')),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 3,
                      vertical: 3,
                    ),
                    child: Text(item.name ?? 'Unnamed'),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ColoredButton(
                          color: Colors.red,
                          child: const Icon(
                            Icons.remove,
                            size: iconSize,
                          ),
                          onPressed: () async => ref
                              .read(orderSlProvider.notifier)
                              .onQuantityRemove(item),
                        ),
                        Text('${item.count}'),
                        ColoredButton(
                          color: Colors.green,
                          child: const Icon(
                            Icons.add,
                            size: iconSize,
                          ),
                          onPressed: () async {
                            await ref
                                .read(orderSlProvider.notifier)
                                .onQuantityAdd(item, count + 1);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '${item.price ?? 0.00}',
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text('${count * price}'),
                    ),
                  ),
                ),
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Center(
                      child: Text(
                        item.vat != null
                            ? ((item.vat! * item.count!) / 100).formatted
                            : '0.00',
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: SizedBox(
                    height: 36,
                    child: CustomButton(
                      iconColor: Colors.black54,
                      onPressed: () async => ref
                          .read(orderSlProvider.notifier)
                          .removeItemFromCart(item),
                      icon: FontAwesomeIcons.xmark,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
