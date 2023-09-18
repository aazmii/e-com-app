// import 'package:pos_sq/src/app.db/tables/payment.table.dart';
// import 'package:pos_sq/src/constants/constants.dart';

// Future onChangePaymentMethod(
//   int paymentId, {
//   PaymentType? paymentType,
//   DigitalPaymentType? digitalPaymentType,
// }) async {
//   await PaymentDetailTable().updatePaymentMethod(
//     paymentId,
//     paymentType: paymentType,
//     digitalPaymentType: digitalPaymentType,
//   );
// }

// void onChangeAmount(
//   int paymentId,
//   String s,
// ) async {
//   await PaymentDetailTable()
//       .updatePaymentAmount(paymentId, amount: double.tryParse(s));
// }

// Future deletePaymentMethod(int paymentDetailId) async {
//   await PaymentDetailTable().deletePaymentById(paymentDetailId);
// }

// //TODO: add new method