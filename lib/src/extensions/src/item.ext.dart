part of '../extensions.dart';

extension ItemExt on Item {
  double get vatPerUnit {
    final itemVat = vat ?? 0;
    final itemPrice = price ?? 0;
    return (itemVat * itemPrice) / 100;
  }

  double get totalVat => vatPerUnit * count!;
}
