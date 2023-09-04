import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/models/order/order.dart';
import 'package:pos_sq/src/modules/transacions/components/payment.custom.table.dart';

class PaymentDetailView extends ConsumerWidget {
  const PaymentDetailView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return PaymentCustomTable(order: Order());
    // return context.isMobileWidth
    //     ? const PaymentTableMobileView(order: Order)
    //     : PaymentCustomTable(order: Order());
  }
}
