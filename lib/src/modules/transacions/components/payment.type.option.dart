import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/transacions/model/transaction/transaction.dart';

import 'papyment.dropdown.dart';

class PaymentOptions extends ConsumerWidget {
  const PaymentOptions({
    super.key,
    this.hasOrder,
    this.tIndex,
  });
  final int? tIndex;
  final bool? hasOrder;
  @override
  Widget build(BuildContext context, ref) {
    final t = Transaction();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
          PaymentType.values.length - 2,
          (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: GestureDetector(
                onTap: (hasOrder != null && hasOrder!)
                    ? () => {}
                    : () => context.showSnack(kNoOederSelected),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    // borderRadius: BorderRadius.circular(5),
                    color: PaymentType.values[index] == t.paymentType
                        ? Colors.grey
                        : Colors.transparent,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4,
                  ),
                  child: Text(
                    PaymentType.values[index].name,
                    style: context.titleMedium
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        ),
        DigitalPaymentDropdown(
          onTap: (hasOrder != null && hasOrder!) ? () {} : null,
          onChange: (v) {
            if ((hasOrder != null && hasOrder!)) {}
          },
          dropdownValue: t.digitalPaymentType,
          isSelected: t.paymentType == PaymentType.digitalPayment,
        ),
      ],
    );
  }
}
