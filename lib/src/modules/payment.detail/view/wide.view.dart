import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/order.detail/provider/providers.dart';
import 'package:pos_sq/src/modules/payment.detail/components/papyment.dropdown.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payemnt.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payment.stream.dart';

import '../components/order.actions.dart';

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
                Text('Payment Detail', style: context.titleMedium),
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

        //*BUTTONS
        actionButtons(ref, context),
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
                child: ref.watch(selectedOrderStream).when(
                      data: (order) {
                        return TextFormField(
                          initialValue: paymentList![index].amount != null
                              ? paymentList![index].amount.toString()
                              : '',
                          textAlign: TextAlign.right,
                          inputFormatters: [decimalOnly],
                          // validator: (s) {
                          //   return ref
                          //       .read(paymentProvider.notifier)
                          //       .amountValidator(
                          //         s,
                          //         balance(
                          //             paymentList!,
                          //             index,
                          //             Order.fromTableData(order).netTotal ??
                          //                 0),
                          //       );
                          // },
                          onChanged: (s) {
                            ref.read(paymentProvider.notifier).onChangeAmount(
                                  value: s,
                                  isLastItem: paymentList!.length - 1 == index,
                                  lastItem:
                                      paymentList![paymentList!.length - 1],
                                  detail: paymentList![index],
                                  balance: balance(paymentList!, index,
                                      Order.fromTableData(order).netTotal ?? 0),
                                );
                          },
                        );
                        // return Text((Order.fromTableData(o)).netTotal.formatted);
                      },
                      error: (e, s) => emptyWidget,
                      loading: () => emptyWidget,
                    )),
          ),
        ),
        SizedBox(
          height: tableColumnHeight,
          child: Align(
            alignment: Alignment.centerRight,
            //*BALANCE
            child: ref.watch(selectedOrderStream).when(
                  data: (o) {
                    return Text(balance(paymentList!, index,
                            (Order.fromTableData(o)).netTotal ?? 0)
                        .formatted);
                  },
                  error: (e, s) => emptyWidget,
                  loading: () => emptyWidget,
                ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: IconButton(
            onPressed: paymentList!.length < 2
                ? null
                : () async {
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

double prevAmounts(List<PaymentDetail> payments, int indexUntil) =>
    payments.sublist(0, indexUntil).fold(0.0, (p, t) {
      double amount = t.amount ?? 0;
      return p + amount;
    });

double balance(List<PaymentDetail> payments, int index, double netTotal) {
  double amount = payments[index].amount ?? 0.0;
  if (index == 0) {
    return netTotal - amount;
  }
  return netTotal - prevAmounts(payments, index + 1);
}
