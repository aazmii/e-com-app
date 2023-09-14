part of '../extensions.dart';

extension ItemList on List<Item> {
  double get grossTotal {
    return fold(0.0, (sum, Item item) {
      final vat = item.vat ?? 0.00;
      final vatPercentage = vat / 100;
      final price = item.price ?? 0.0;
      return (sum + (price + vatPercentage) * item.count!);
    });
  }

  double get totalVat {
    return fold(0.0, (sum, Item item) {
      final vat = item.vat ?? 0.00;
      final count = item.count ?? 1;
      return (sum + ((vat / 100) * count)); //in percentage
    });
  }
  
}
