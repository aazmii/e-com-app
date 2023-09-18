import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/payment.detail_/payemnt.detail.dart';

final selectedPaymentTableCell = StateProvider((ref) => -1);
final addTableRowProvider =
    StateProvider.family<List<TableRow>, WidgetRef>((ref, widgetRef) {
  return [
    PaymentTable.tableRow(widgetRef),
  ];
});
