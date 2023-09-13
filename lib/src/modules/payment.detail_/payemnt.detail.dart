import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/order.action.button.dart';
import 'package:pos_sq/src/components/square.button.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/payment.detail_/providers/providers.dart';

class PaymentTable extends ConsumerWidget {
  PaymentTable({super.key});
  final _paymentTitle = [
    "Payment Method",
    "Transaction Details",
    "Balance",
    "Amount",
    " ",
  ];

  final _rootColumnWidth = const {
    0: FlexColumnWidth(4),
    1: FlexColumnWidth(1.5),
    2: FlexColumnWidth(2.1),
    3: FlexColumnWidth(1.8),
    4: FlexColumnWidth(.6),
  };

  final paymentActionColumnWidth = const {
    0: FlexColumnWidth(3.65),
    1: FlexColumnWidth(1.4),
    2: FlexColumnWidth(1.2),
  };

  static TableRow tableRow(WidgetRef ref) {
    return TableRow(
      children: [
        Table(
          columnWidths: const {
            0: FlexColumnWidth(0.8),
            1: FlexColumnWidth(0.8),
            2: FlexColumnWidth(3),
          },
          border: TableBorder.all(color: Colors.grey.shade300),
          children: [
            TableRow(
              children: [
                selectPaymentType(
                  index: 0,
                  ref: ref,
                  child: const Text('Cash'),
                ),
                selectPaymentType(
                  index: 1,
                  ref: ref,
                  child: const Text('Card'),
                ),
                selectPaymentType(
                  index: 2,
                  ref: ref,
                  child: DropdownButtonFormField<DigitalPaymentType>(
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: DigitalPaymentType.bkash,
                    focusColor: Colors.transparent,
                    onChanged: (value) {},
                    icon: const Icon(Icons.keyboard_arrow_down_sharp),
                    items: DigitalPaymentType.values.map(
                      (DigitalPaymentType type) {
                        return DropdownMenuItem<DigitalPaymentType>(
                          value: type,
                          child: Text(
                            type.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
        const TableCell(
          child: SizedBox(
            height: textFieldHeight,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 4),
                ),
              ),
            ),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: textFieldHeight,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                onChanged: (value) {},
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 4),
                  hintText: '0',
                ),
              ),
            ),
          ),
        ),
        const TableCell(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('BDT 980'),
              ),
            ),
          ),
        ),
        TableCell(
          child: SizedBox(
            height: 40,
            child: CustomButton(
              iconColor: Colors.black54,
              onPressed: () {},
              icon: FontAwesomeIcons.xmark,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PAYMENT DETAILS',
          style: context.titleMedium,
        ),
        height5,
        paymentHeader(context),
        paymentRow(ref),
        paymentActionButton(ref),
      ],
    );
  }

  Table paymentActionButton(WidgetRef ref) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(color: Colors.grey.shade300),
      columnWidths: const {
        0: FlexColumnWidth(16),
        1: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            Table(
              border: TableBorder.all(color: Colors.grey.shade300),
              columnWidths: paymentActionColumnWidth,
              children: [
                TableRow(
                  children: [
                    const TableCell(child: Center(child: Text(''))),
                    TableCell(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 8,
                          ),
                          child: OrderActionButton(
                            onPress: () {},
                            color: Colors.black,
                            text: 'New Order',
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 8,
                          ),
                          child: OrderActionButton(
                            onPress: () {},
                            text: 'Print',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const TableCell(child: Text('')),
          ],
        ),
        TableRow(
          children: [
            Table(
              border: TableBorder.all(color: Colors.grey.shade300),
              columnWidths: paymentActionColumnWidth,
              children: [
                TableRow(
                  children: [
                    const TableCell(child: Center(child: Text(''))),
                    const TableCell(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 3,
                          ),
                          child: Text('Return Amount: BDT 0.00'),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 3,
                            vertical: 11,
                          ),
                          child: CustomButton(
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const TableCell(child: Text('')),
          ],
        ),
      ],
    );
  }

  Table paymentRow(WidgetRef ref) {
    return Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: _rootColumnWidth,
        border: TableBorder.all(color: Colors.grey.shade300),
        children: ref.watch(addTableRowProvider(ref))
        );
  }

  static TableCell selectPaymentType({
    required int index,
    required WidgetRef ref,
    required Widget child,
  }) {
    final selectedCellIndex = ref.watch(selectedPaymentTableCell);
    bool isSelected = selectedCellIndex == index;
    // bool isSelected = true;
    return TableCell(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 40,
          alignment: Alignment.center,
          color: isSelected ? const Color(0xff32CD32) : Colors.transparent,
          child: child,
        ),
      ),
    );
  }

  Table paymentHeader(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: _rootColumnWidth,
      border: TableBorder.all(color: Colors.grey.shade300),
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: context.secondaryColor,
          ),
          children: [
            ...List.generate(
              _paymentTitle.length,
              (index) => TableCell(
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                    child: Text(
                      _paymentTitle[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
