import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/calculation/provider/calculation.provider.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/providers/methods.dart';
import 'package:pos_sq/src/providers/providers.dart';

const _cellHeight = 35.0;
Table calculatoinTable(
  BuildContext context,
  WidgetRef ref,
  double? grossTotal,
  double? totalVat,
  Order? order,
  double? tax,
) {
  // ref.watch(tecProvider('discount')).text = '${order?.discountAmount ?? 0}';
  return Table(
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
            children: [
              TableRow(
                children: [
                  const TableCell(
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
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 4,
                        ),
                        child: Text(grossTotal.formatted),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(
                    child: SizedBox(
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
                  ),
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: textFieldHeight,
                            child: TextFormField(
                              inputFormatters: [decimalOnly],
                              controller: ref.watch(tecProvider('discount')),
                              onTap: () =>
                                  selectAll(ref.watch(tecProvider('discount'))),
                              onChanged: (s) {
                                ref
                                    .read(calculationProvider.notifier)
                                    .onDiscountAmountChange(
                                        s, order?.discountType);
                              },
                              textAlign: TextAlign.right,
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                hintText: '0',
                              ),
                            ),
                          ),
                          if (order?.discountType != null)
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Discount BDT ${order!.getDisocuntAmount(total: grossTotal ?? 0)}',
                                textAlign: TextAlign.right,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        child: Text('BDT ${totalVat.formatted}'),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 4),
                        child: Text(tax != null ? 'BDT $tax' : 'BDT 0.00'),
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const TableCell(
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
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 4,
                        ),
                        child: Text('BDT ${order?.netTotal.formatted}'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //* DISCOUNT TYPE BUTTON
          Table(
            children: [
              const TableRow(
                children: [
                  SizedBox(
                    height: _cellHeight,
                  ),
                  emptyWidget
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: ColoredButton(
                        color: order?.discountType == DiscountType.cash
                            ? context.selectColor
                            : context.primaryColor,
                        onPressed: () => ref
                            .read(calculationProvider.notifier)
                            .updateDiscountType(
                              DiscountType.cash,
                            ),
                        child: const Text(
                          '৳',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 10,
                      ),
                      child: ColoredButton(
                        color: order?.discountType == DiscountType.percentage
                            ? context.selectColor
                            : context.primaryColor,
                        onPressed: () => ref
                            .read(calculationProvider.notifier)
                            .updateDiscountType(
                              DiscountType.percentage,
                            ),
                        child: const Text(
                          '%',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

double discountAmount(double? percentage, double? grossTotal) {
  if (percentage == null) return grossTotal ?? 0.00;
  if (grossTotal == null) return 0.00;
  return (percentage / 100) * grossTotal;
}
