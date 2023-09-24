import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
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

  void onChangePaymentDetail(int? id, String? s) async {
    if (id == null) return;
    await PaymentDetailTable.updateTransactionDetail(id, tDetail: s);
  }

  Future changePaymentMethod(
    int paymentId, {
    PaymentType? paymentType,
    required PaymentDetail? lastDetail,
    DigitalPaymentType? digitalPaymentType,
    required int listLen,
  }) async {
    await PaymentDetailTable.updatePaymentMethod(
      paymentId,
      paymentType: paymentType,
      digitalPaymentType: digitalPaymentType,
    );
    if (lastDetail?.amount != null) await addPaymentMethod(listLen);
  }

  void onChangeAmount({
    required PaymentDetail detail,
    required PaymentDetail? lastItem,
    required bool isLastItem,
    required String value,
    required double? balance,
    required int listLength,
  }) async {
    if (balance == null) return;

    final input = value.toDouble();
    final returnAmount = balance - input;
    await PaymentDetailTable.updatePaymentAmount(
      detail.id!,
      amount: double.tryParse(value),
    );
    if (!detail.isMethodSelected) return;
    if (value.isEmpty) {
      if (!isLastItem && lastItem?.amount == null) {
        await deletePaymentMethod(lastItem!.id!, listLength);
      }
    } else {
      if (returnAmount > 0 && isLastItem) {
        await addPaymentMethod(listLength);
      }
      if (!isLastItem && returnAmount.isNegative) {
        await deletePaymentMethod(lastItem!.id!, listLength);
      }
    }
  }

  bool get isCartExpanded => ref.read(cartStateProvider) == CartState.expnaded;

  //has some bugs
  // void onChangeAmount({
  //   required PaymentDetail detail,
  //   required PaymentDetail? lastItem,
  //   required bool isLastItem,
  //   required String value,
  //   required double? balance,
  // }) async {
  //   if (balance == null) return;
  //   // if (detail.paymentType == PaymentType.none) return;
  //   final returnAmount = balance - value.toDouble();
  //   await PaymentDetailTable.updatePaymentAmount(
  //     detail.id!,
  //     amount: double.tryParse(value),
  //   );

  //   if (returnAmount.isNegative) {
  //     if (lastItem?.amount == null) {
  //       PaymentDetailTable.deletePaymentById(lastItem?.id);
  //     }
  //     return;
  //   } else {
  //     if (isLastItem && returnAmount != 0) await addPaymentMethod();
  //   }

  //   if (value.isEmpty) {
  //     if (!isLastItem) {
  //       if (lastItem?.amount == null) {
  //         PaymentDetailTable.deletePaymentById(lastItem?.id);
  //       }
  //     }
  //   }
  //   // else {
  //   //   if (isLastItem) {
  //   //     await addPaymentMethod();
  //   //   }
  //   // }
  // }

  Future addPaymentMethod(int listLen) async {
    if (listLen + 1 > 2 && isCartExpanded) {
      ref.read(cartStateProvider.notifier).toggleCartState();
    }
    await PaymentDetailTable.insertPayment(
      PaymentDetailTableCompanion(
        orderId: Value(
          ref.read(orderProvider),
        ),
      ),
    );
  }

  Future deletePaymentMethod(int paymentDetailId, int listLen) async {
    if (listLen < 4 && !isCartExpanded) {
      ref.read(cartStateProvider.notifier).toggleCartState();
    }
    await PaymentDetailTable.deletePaymentById(paymentDetailId);
  }
}
