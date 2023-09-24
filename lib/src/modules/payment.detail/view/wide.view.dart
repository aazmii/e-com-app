import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/provider/providers.dart';
import 'package:pos_sq/src/modules/payment.detail/components/papyment.dropdown.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payemnt.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/provider/payment.stream.dart';
import 'package:pos_sq/src/providers/methods.dart';

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
        actionButtons(ref, context, paymentList)
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
                    if (!canCashAdd(paymentList!)) return;
                    ref.read(paymentProvider.notifier).changePaymentMethod(
                          paymentType: PaymentType.cash,
                          paymentList![index].id!,
                          lastDetail: paymentList![paymentList!.length - 1],
                          listLen: paymentList!.length,
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
                          lastDetail: paymentList![paymentList!.length - 1],
                          listLen: paymentList!.length,
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
                              lastDetail: paymentList![paymentList!.length - 1],
                              listLen: paymentList!.length,
                            );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              height: textFieldHeight,
              //*TRANSACTION DETAIL
              child: TextFormField(
                initialValue: paymentList![index].transactionDetail ?? '',
                onChanged: (s) async {
                  ref
                      .read(paymentProvider.notifier)
                      .onChangePaymentDetail(paymentList![index].id, s);
                },
              ),
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
                                  listLength: paymentList?.length ?? 0,
                                  value: s,
                                  isLastItem: paymentList!.length - 1 == index,
                                  lastItem:
                                      paymentList![paymentList!.length - 1],
                                  detail: paymentList![index],
                                  balance: index == 0
                                      ? order.netTotal
                                      : findBalance(paymentList!, index,
                                          order.netTotal ?? 0),
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          height: tableColumnHeight,
          child: Align(
            alignment: Alignment.centerRight,
            //*BALANCE
            child: ref.watch(selectedOrderStream).when(
                  data: (order) {
                    findBalance(paymentList!, index, order.netTotal ?? 0);
                    return Text(
                      index == 0
                          ? order.netTotal.formatted
                          : findBalance(
                                  paymentList!, index - 1, order.netTotal ?? 0)
                              .formatted,
                    );
                  },
                  error: (e, s) => emptyWidget,
                  loading: () => emptyWidget,
                ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: index != 0
              ? IconButton(
                  onPressed: () async {
                    await ref
                        .read(paymentProvider.notifier)
                        .deletePaymentMethod(
                          paymentList![index].id!,
                          paymentList!.length,
                        );
                  },
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                    size: 20,
                    color: Colors.grey,
                  ),
                )
              : emptyWidget,
        )
      ],
    );
  }

  bool canCashAdd(List<PaymentDetail> list) {
    for (var e in list) {
      if (e.paymentType == PaymentType.cash) {
        return false;
      }
    }
    return true;
  }
}
