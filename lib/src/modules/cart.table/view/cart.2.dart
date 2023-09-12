import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/models/order/order.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapse.button.dart';
import 'package:pos_sq/src/modules/cart.table/view/components/collapsed.view.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

import 'components/disocunt.button.dart';

class NewCart extends ConsumerWidget {
  const NewCart({super.key});

  final rootColumnWidth = const {
    0: FlexColumnWidth(6),
    1: FlexColumnWidth(1),
  };

  final columnTitleAndItemWidth = const {
    0: FlexColumnWidth(0.5),
    1: FlexColumnWidth(2.5),
    2: FlexColumnWidth(2),
    3: FlexColumnWidth(1.5),
    4: FlexColumnWidth(2.5),
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(cartStateProvider) == CartState.collapsed
        ? const CollapsedView()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              tableWithItems(
                  context,
                  Order(items: [
                    Item(name: 'dfkj', price: 34, count: 2),
                    Item(name: 'dfkj', price: 34, count: 2),
                    Item(name: 'dfkj', price: 34, count: 2),
                   
                  ]),
                  ref,
                  1),
              height10,
              CartStateButton(
                onPressed: ref.read(cartStateProvider.notifier).toggleCartState,
              ),
            ],
          );
  }

  Table emptyTable(BuildContext context, orderLength) {
    return Table(
      border: TableBorder.all(color: Colors.grey.shade300),
      columnWidths: rootColumnWidth,
      children: [
        tableHeader(context),
        addNewItem(orderLength),
      ],
    );
  }

  Column tableWithItems(
      BuildContext context, Order order, WidgetRef ref, int orderLength) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(color: Colors.grey.shade300),
          columnWidths: rootColumnWidth,
          children: [
            tableHeader(context),
            ...List.generate(
              order.items!.length,
              (index) {
                final notifier = ref.watch(orderSlProvider.notifier);
                final price = order.items?[index].price ?? 0;
                final count = order.items?[index].count ?? 0;
                final totalPrice = price * count;
                final item = order.items![index];

                return TableRow(
                  children: [
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: columnTitleAndItemWidth,
                      border: TableBorder.all(color: Colors.grey.shade300),
                      children: [
                        TableRow(
                          decoration: BoxDecoration(
                            color: index % 2 != 0
                                ? const Color(0xffFCFCFC)
                                : Colors.transparent,
                          ),
                          children: [
                            TableCell(
                              child: Center(child: Text('${index + 1}')),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 3),
                                child: Text(order.items![index].name ?? ""),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    QuantityButton(
                                      backgroundColor: Colors.red,
                                      iconColor: Colors.white,
                                      icon: Icons.remove,
                                      onPressed: () async =>
                                          notifier.onQuantityRemove(item),
                                    ),
                                    Text(count.toString()),
                                    QuantityButton(
                                      backgroundColor: Colors.green,
                                      iconColor: Colors.white,
                                      icon: Icons.add,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(price.formatted),
                                ),
                              ),
                            ),
                            TableCell(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  child: Text(totalPrice.formatted),
                                ),
                              ),
                            ),
                            const TableCell(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3),
                                child: Center(child: Text('0.00')),
                              ),
                            ),
                            TableCell(
                              child: SizedBox(
                                height: 36,
                                child: CustomButton(
                                  iconColor: Colors.black54,
                                  onPressed: () async =>
                                      notifier.removeItemFromCart(item),
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
              },
            ),
            addNewItem(orderLength),
          ],
        ),
        billSummary(),
      ],
    );
  }

  Table billSummary() {
    return Table(
      // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: Colors.grey.shade300,
      ),
      columnWidths: const {
        0: FlexColumnWidth(4.5),
        1: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            Table(
              border: TableBorder.all(
                color: Colors.grey.shade300,
              ),
              columnWidths: const {
                0: FlexColumnWidth(2.6),
                1: FlexColumnWidth(1),
              },
              children: const [
                TableRow(
                  children: [
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text(
                            'Gross Total',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text('BDT 999000000'),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text(
                            'Discount',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: SizedBox(
                        height: textFieldHeight,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 4),
                              hintText: '0',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text(
                            'Total Vat',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text('BDT 0.00'),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text(
                            'Total Tax',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text('BDT 0.00'),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text(
                            'Net Total',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                          child: Text('BDT 90'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            TableCell(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 42, left: 5),
                  child: const DiscountTypeButton(
                    isSelected: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TableRow tableHeader(BuildContext context) {
    return TableRow(
      decoration: BoxDecoration(
        color: context.secondaryColor,
      ),
      children: [
        Table(
          border: TableBorder.all(color: Colors.grey.shade400),
          columnWidths: columnTitleAndItemWidth,
          children: const [
            TableRow(
              children: [
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Sl',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Item name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Qty',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 3,
                      ),
                      child: Text(
                        'Unit Price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Total price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        'Vat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF495057),
                        ),
                      ),
                    ),
                  ),
                ),
                TableCell(child: Center(child: Text('')))
              ],
            ),
          ],
        ),
      ],
    );
  }

  addNewItem(orderLength) {
    if (orderLength == null) return null;
    return TableRow(
      children: [
        Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: columnTitleAndItemWidth,
          border: TableBorder.all(color: Colors.grey.shade300),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Center(
                        child: orderLength == null
                            ? const Text('1')
                            : Text("${orderLength + 1}")),
                  ),
                ),
                const TableCell(
                  child: SizedBox(
                    height: textFieldHeight,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                        ),
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
                        QuantityButton(
                          backgroundColor: Colors.red,
                          iconColor: Colors.white,
                          icon: Icons.remove,
                          onPressed: () {},
                        ),
                        const Text('1'),
                        QuantityButton(
                          backgroundColor: Colors.green,
                          iconColor: Colors.white,
                          icon: Icons.add,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                const TableCell(
                  child: SizedBox(
                    height: textFieldHeight,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 4),
                          hintText: 'Price',
                        ),
                      ),
                    ),
                  ),
                ),
                const TableCell(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      child: Text('1'),
                    ),
                  ),
                ),
                const TableCell(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Center(child: Text('0.00')),
                  ),
                ),
                TableCell(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      minHeight: 40,
                    ),
                    child: CustomButton(
                      iconColor: Colors.black54,
                      onPressed: () {},
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
