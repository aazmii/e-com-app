import 'package:flutter/material.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
 

import 'add.payemnt.button.dart';

TableRow addAnotherPaymentRow() {
  return TableRow(
      children: List.generate(paymentTableHeaders.length, (index) {
    if (index == 0) {
      return const AddPaymentButton();
    }
    return const SizedBox.shrink();
  }));
}
