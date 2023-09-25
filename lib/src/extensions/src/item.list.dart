part of '../extensions.dart';

extension ItemList on List<Item> {
  double get grossTotal {
    double gross = fold(0.0, (sum, Item item) {
      final price = item.price ?? 0.0;
      return (sum + (price * item.count!));
    });
    return gross;
  }

  double get totalVat {
    return fold(0.0, (sum, Item item) {
      final vatPercentage = item.vat ?? 0.00;
      final vatAmount = item.price! * vatPercentage / 100;
      final count = item.count ?? 1;
      return sum + vatAmount * count;
    });
  }

  double totalTax(double taxPercentage) => grossTotal * taxPercentage / 100;

  // double get netTotal => grossTotal - totalVat;
}
