import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

TableRow customItemRow(
  WidgetRef ref,
  int i,
  Item item,
) {
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
                    horizontal: 8,
                    vertical: 6,
                  ),
                  child: SizedBox(
                    height: textFieldHeight,
                    child: TextField(
                      onChanged: (s) async => ref
                          .read(orderSlProvider.notifier)
                          .updateItemName(item.id, name: s),
                    ),
                  ),
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
                        onPressed: () async => ref
                            .read(orderSlProvider.notifier)
                            .onQuantityRemove(item),
                        child: const Icon(
                          Icons.remove,
                          size: iconSize,
                        ),
                      ),
                      Text('${item.count}'),
                      ColoredButton(
                        color: Colors.green,
                        onPressed: () async => ref
                            .read(orderSlProvider.notifier)
                            .onQuantityAdd(item, item.count! + 1),
                        child: const Icon(
                          Icons.add,
                          size: iconSize,
                        ),
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
                    child: SizedBox(
                      height: textFieldHeight,
                      child: TextField(
                        onChanged: (s) async => ref
                            .read(orderSlProvider.notifier)
                            .updateItemPrice(item.id, s),
                      ),
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
                    // iconColor: Colors.grey,
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {},
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
