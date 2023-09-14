import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/order.action.button.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/payment.detail/components/papyment.dropdown.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payemnt.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payment.stream.dart';

final tableBorder = TableBorder.all(width: 1, color: Colors.grey);
const tableColumnHeight = 55.0;

class PaymentDetailWideView extends ConsumerWidget {
  const PaymentDetailWideView({
    super.key,
  });
  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(paymentStream).when(
          data: (paymentList) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Payment Detail'),
                PaymentTable(
                  paymentList: paymentList,
                ),
                const SizedBox(height: 30)
              ],
            );
          },
          error: (e, s) => Text('error $e'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}

class PaymentTable extends ConsumerWidget {
  const PaymentTable({super.key, this.paymentList});
  final List<PaymentDetail>? paymentList;
  final selectColor = Colors.green;

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
                0: FlexColumnWidth(0.5),
                1: FlexColumnWidth(0.2),
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
                if (paymentList != null)
                  ...List.generate(
                    paymentList!.length,
                    (index) => buildLeftRow(ref, index),
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
                if (paymentList != null)
                  ...List.generate(
                    paymentList!.length,
                    (index) => buildRightRow(ref, index),
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

  TableRow buildLeftRow(
    WidgetRef ref,
    int index,
  ) {
    return TableRow(
      children: [
        Table(
          columnWidths: const {
            //*PAYMENT OPTIONS
            0: FlexColumnWidth(0.12),
            1: FlexColumnWidth(0.12),
            2: FlexColumnWidth(0.4),
          },
          border: tableBorder,
          children: [
            TableRow(
              children: [
                GestureDetector(
                  onTap: () {
                    ref.read(paymentProvider.notifier).changePaymentMethod(
                          paymentType: PaymentType.cash,
                          paymentList![index].id!,
                        );
                  },
                  child: Container(
                    color: paymentList?[index].paymentType == PaymentType.cash
                        ? selectColor
                        : null,
                    height: tableColumnHeight,
                    child: const Center(
                      child: Text('cash'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ref.read(paymentProvider.notifier).changePaymentMethod(
                          paymentType: PaymentType.card,
                          paymentList![index].id!,
                        );
                  },
                  child: Container(
                    height: tableColumnHeight,
                    color: paymentList?[index].paymentType == PaymentType.card
                        ? selectColor
                        : null,
                    child: const Center(
                      child: Text('card'),
                    ),
                  ),
                ),
                Container(
                  color: paymentList![index].digitalPaymentType !=
                          DigitalPaymentType.digitalPayment
                      ? Colors.green
                      : Colors.transparent,
                  height: tableColumnHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 6,
                    ),
                    child: DigitalPaymentDropdown(
                      isSelected: paymentList![index].digitalPaymentType !=
                          DigitalPaymentType.digitalPayment,
                      dropdownValue: paymentList![index].digitalPaymentType ??
                          DigitalPaymentType.digitalPayment,
                      onChange: (type) {
                        ref.read(paymentProvider.notifier).changePaymentMethod(
                              digitalPaymentType: type,
                              paymentList![index].id!,
                            );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: textFieldHeight,
              //*TRANSACTION DETAIL
              child: TextField(),
            ),
          ),
        ),
      ],
    );
  }

  TableRow buildRightRow(WidgetRef ref, int index) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: textFieldHeight,
              //*AMOUNT
              child: TextField(
                onChanged: (s) {
                  ref
                      .read(paymentProvider.notifier)
                      .onChangeAmount(paymentList![index].id!, s);
                },
              ),
            ),
          ),
        ),
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
            onPressed: () async {
              await ref
                  .read(paymentProvider.notifier)
                  .deletePaymentMethod(paymentList![index].id!);
            },
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
