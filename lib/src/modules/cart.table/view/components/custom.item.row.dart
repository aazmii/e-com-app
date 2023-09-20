import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
import 'package:pos_sq/src/providers/methods.dart';

TableRow customItemRow(
  WidgetRef ref,
  int rowIndex,
  Item item,
  bool isLastItem,
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
              color: rowIndex % 2 != 0
                  ? const Color(0xffFCFCFC)
                  : Colors.transparent,
            ),
            children: [
              TableCell(
                child: Center(child: Text('$rowIndex')),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 6,
                  ),
                  child: SizedBox(
                    height: textFieldHeight,
                    child: TextFormField(
                      initialValue: item.name,
                      // controller: ref.watch(tecProvider(TECProvider.itemName)),
                      // onTap: () => selectAll(
                      //   ref.watch(tecProvider(TECProvider.itemName)),
                      // ),
                      onChanged: (s) async => ref
                          .read(orderProvider.notifier)
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
                            .read(orderProvider.notifier)
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
                            .read(orderProvider.notifier)
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
                      child: TextFormField(
                        initialValue: item.price.formatted,
                        // controller:
                        //     ref.watch(tecProvider(TECProvider.itemPrice)),
                        // onTap: () => selectAll(
                        //     ref.watch(tecProvider(TECProvider.itemPrice))),
                        textAlign: TextAlign.right,
                        onChanged: (s) async => ref
                            .read(orderProvider.notifier)
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
                    child: Text((count * price).formatted),
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: SizedBox(
                    height: textFieldHeight,
                    child: TextFormField(
                        initialValue: item.vat.formatted,
                        // controller: ref.watch(tecProvider(TECProvider.itemVat)),
                        // onTap: () => selectAll(
                        //     ref.watch(tecProvider(TECProvider.itemVat))),
                        textAlign: TextAlign.right,
                        decoration: const InputDecoration(hintText: '%'),
                        onChanged: (s) async => ref
                            .read(orderProvider.notifier)
                            .updateItemVat(item.id, s)),
                  ),
                ),
              ),
              TableCell(
                child: SizedBox(
                  height: 36,
                  child: CustomButton(
                    // iconColor: Colors.grey,
                    icon: isLastItem
                        ? FontAwesomeIcons.plus
                        : FontAwesomeIcons.xmark,
                    iconColor: Colors.grey,
                    onPressed: () async {
                      isLastItem
                          ? await addCustomItemInOrder(ref.read(orderProvider)!)
                          : ref
                              .read(orderProvider.notifier)
                              .removeItemFromCart(item);
                    },
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
