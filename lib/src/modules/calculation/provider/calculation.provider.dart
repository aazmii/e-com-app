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
    await ref.read(orderSlProvider.notifier).updateCalculationFields();
  }

  Future onDiscountAmountChange(String? s, DiscountType? type) async {
    if (type == null) return;
    double? amount = s != null ? double.tryParse(s) : 0;
    amount = amount ?? 0;
    await OrderTable().updateDiscountAmount(
      ref.read(orderSlProvider)!,
      amount,
    );
    await ref.read(orderSlProvider.notifier).updateCalculationFields();
  }
}
