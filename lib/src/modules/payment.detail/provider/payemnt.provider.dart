import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';

final paymentProvider =
    NotifierProvider<_PaymentProvider, void>(_PaymentProvider.new);

class _PaymentProvider extends Notifier<void> {
  @override
  build() => {};

  String? amountValidator(String? s, double? balance) {
    if (balance! - s.toDouble() < 0) return 'invalid input';
    return null;
  }

  Future changePaymentMethod(
    int paymentId, {
    PaymentType? paymentType,
    DigitalPaymentType? digitalPaymentType,
  }) async {
    await PaymentDetailTable.updatePaymentMethod(
      paymentId,
      paymentType: paymentType,
      digitalPaymentType: digitalPaymentType,
    );
  }

  void onChangeAmount({
    required PaymentDetail detail,
    required PaymentDetail? lastItem,
    required bool isLastItem,
    required String value,
    double? balance,
  }) async {
    if (balance == null) return;
    // if (detail.paymentType == PaymentType.none) return;
    if (balance - value.toDouble() < 0) return;
    await PaymentDetailTable.updatePaymentAmount(
      detail.id!,
      amount: double.tryParse(value),
    );

    if (value.isEmpty) {
      //delete

      if (!isLastItem) {
        if (lastItem?.amount == null) {
          PaymentDetailTable.deletePaymentById(lastItem?.id);
        }
      }
    } else {
      if (isLastItem) {
        await addPaymentMethod();
      }
    }
  }

// await PaymentDetailTable.updatePaymentAmount(detail.id!,
//             amount: double.tryParse(value));
  Future addPaymentMethod() async {
    await PaymentDetailTable.insertPayment(
      PaymentDetailTableCompanion(
        orderId: Value(
          ref.read(orderProvider),
        ),
        // amount: Value(balance! - value.toDouble()),
        // amount: const Value(0.00),
      ),
    );
  }

  Future deletePaymentMethod(int paymentDetailId) async {
    await PaymentDetailTable.deletePaymentById(paymentDetailId);
  }
}
