import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/app.db/tables/payment.table.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';

final paymentStream = StreamProvider<List<PaymentDetail>>((ref) {
  final sl = ref.watch(orderSlProvider);
  if (sl == null) return const Stream.empty();
  Stream<List<PaymentDetailTableData>> itemDataStream =
      PaymentDetailTable.watchPayments(orderSl: sl);

  return itemDataStream.map((List<PaymentDetailTableData> itemDataList) {
    final List<PaymentDetail> paymentDetails = itemDataList.map((paymentData) {
      return PaymentDetail.fromTableData(paymentData);
    }).toList();
    return paymentDetails;
  });
});
