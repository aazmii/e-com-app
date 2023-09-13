import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/order.action.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

final tableBorder = TableBorder.all(width: 1, color: Colors.grey);
const tableColumnHeight = 55.0;

class PaymentDetailWideView extends ConsumerWidget {
  const PaymentDetailWideView({
    super.key,
  });
  @override
  Widget build(BuildContext context, ref) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Payment Detail'),
        PaymentTable(),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}

class PaymentTable extends ConsumerWidget {
  const PaymentTable({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Table(
      border: tableBorder,
      children: [
        TableRow(
          children: [
            //main left
            Table(
              columnWidths: const {
                0: FlexColumnWidth(0.6),
                1: FlexColumnWidth(0.4),
              },
              border: tableBorder,
              children: [
                //left two
                TableRow(
                  children: [
                    Container(
                      color: context.secondaryColor,
                      height: tableColumnHeight,
                      child: const Center(child: Text('Payment Method')),
                    ),
                    Container(
                      color: context.secondaryColor,
                      height: tableColumnHeight,
                      child: const Text(
                        'Transaction\nDetials',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                //data list
                ...List.generate(
                  3,
                  (index) => buildLeftRow(),
                )
              ],
            ),
            //main right
            Table(
              columnWidths: const {
                0: FlexColumnWidth(0.6),
                1: FlexColumnWidth(0.6),
                2: FlexColumnWidth(0.2),
              },
              border: tableBorder,
              children: [
                //right  two
                TableRow(
                  children: [
                    Container(
                      color: context.secondaryColor,
                      height: tableColumnHeight,
                      child: const Center(
                        child: Text('Amount'),
                      ),
                    ),
                    Container(
                      height: tableColumnHeight,
                      color: context.secondaryColor,
                      child: const Center(
                        child: Text('Balance'),
                      ),
                    ),
                    Container(
                      color: context.secondaryColor,
                      height: tableColumnHeight,
                    ),
                  ],
                ),
                ...List.generate(
                  3,
                  (index) => buildRightRow(),
                )
              ],
            ),
          ],
        ),

        //data
        TableRow(
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
                      height: tableColumnHeight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 8,
                        ),
                        child: OrderActionButton(
                          text: 'New Order',
                          onPress: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: tableColumnHeight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OrderActionButton(
                          text: 'Print',
                          onPress: () {},
                        ),
                      ),
                    ),
                    emptyWidget,
                  ],
                ),
                TableRow(children: [
                  const SizedBox(
                    height: tableColumnHeight,
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        'Return Amount\nBDT 120',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OrderActionButton(
                      text: 'Discard',
                      color: Colors.red,
                      onPress: () {},
                    ),
                  ),
                  emptyWidget,
                ]),
              ],
            )
          ],
        ),
      ],
    );
  }

  TableRow buildLeftRow() {
    return TableRow(
      children: [
        Table(
          border: tableBorder,
          children: const [
            TableRow(children: [
              SizedBox(
                height: tableColumnHeight,
                child: Center(
                  child: Text('cash'),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text('card'),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Center(
                  child: Text('digital'),
                ),
              ),
            ])
          ],
        ),
        const TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: textFieldHeight,
              child: TextField(),
            ),
          ),
        ),
      ],
    );
  }

  TableRow buildRightRow() {
    return TableRow(
      children: [
        const TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: textFieldHeight,
              child: TextField(),
            ),
          ),
        ),
        // const SizedBox(
        //   height: tableColumnHeight,
        //   child: Align(
        //     alignment: Alignment.centerRight,

        //     //*AMOUNT
        //     child: Text('2323'),
        //   ),
        // ),
        const SizedBox(
          height: tableColumnHeight,
          child: Align(
            alignment: Alignment.centerRight,
            //*BALANCE
            child: Text('3434'),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.xmark,
              size: 20,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
