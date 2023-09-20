import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';

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
              color: i % 2 != 0 ? const Color(0xffFCFCFC) : Colors.transparent,
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
                            .read(orderProvider.notifier)
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
                              .read(orderProvider.notifier)
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
                    child: Text(item.totalVat.formatted),
                  ),
                ),
              ),
              TableCell(
                child: SizedBox(
                  height: 36,
                  child: CustomButton(
                    iconColor: Colors.black54,
                    onPressed: () async => ref
                        .read(orderProvider.notifier)
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
