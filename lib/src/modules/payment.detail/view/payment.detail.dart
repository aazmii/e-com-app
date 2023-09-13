import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/payment.detail/view/wide.view.dart';

class PaymentDetail extends ConsumerWidget {
  const PaymentDetail({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return context.isMobileWidth ? SizedBox() : PaymentDetailWideView();
  }
}
