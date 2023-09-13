import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
 

import '../model/transaction/transaction.dart';

final digitalPaymentProvider = NotifierProviderFamily<_PaymentTypeProvider,
    DigitalPaymentType, Transaction>(
  _PaymentTypeProvider.new,
);

class _PaymentTypeProvider
    extends FamilyNotifier<DigitalPaymentType, Transaction> {
  late DigitalPaymentType selectedPaymentType;
  @override
  DigitalPaymentType build(Transaction arg) {
    selectedPaymentType = arg.digitalPaymentType;
    return arg.digitalPaymentType;
  }

  void onDropdownValueChange(DigitalPaymentType? valueName) {
    if (valueName == null) return;
    state = valueName;
  }
}
 