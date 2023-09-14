import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';

final calculationProvider = NotifierProvider<CalculationProvider, void>(
  CalculationProvider.new,
);

class CalculationProvider extends Notifier<void> {
  @override
  void build() {}

  Future updateDiscountType(DiscountType type) async {
    await OrderTable().updateDiscountType(ref.read(orderSlProvider)!, type);
  }

  void onDiscountAmountChange(String? s) async {
    if (s == null) return;
    await OrderTable().updateDiscountAmount(
      ref.read(orderSlProvider)!,
      double.tryParse(s),
    );
  }
}
