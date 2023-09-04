part of '../order.dart';

extension OrderCalculationExt on Order {
  double get grossTotal => items!.fold(0.00, (prevValue, item) {
        final quantity = item.count ?? 1;
        final price = item.price ?? 0.00;
        return (prevValue + (quantity * price));
      });
  // int get grossTotal => productsLinks.toList().fold(0, (prevValue, item) {
  //       final quantity = item.quantity ?? 1;
  //       final price = double.tryParse(item.price ?? '0') ?? 0;
  //       return (prevValue + (quantity * price)).toInt();
  //     });

  double get allAmount => 0;
  // double get allAmount => transactionLinks.toList().fold(0.0, (p, t) {
  //       double amount = t.transactionAmount ?? 0;
  //       return p + amount;
  //     });

  double prevAmounts(int indexUntil) => 0;
  // double prevAmounts(int indexUntil) =>
  //     transactions.sublist(0, indexUntil).fold(0.0, (p, t) {
  //       double amount = t.transactionAmount ?? 0;
  //       return p + amount;
  //     });

  double get receivedAmount => 0;
  // double get receivedAmount => transactions.fold(0.0, (p, t) {
  //       double amount = t.transactionAmount ?? 0;
  //       return p + amount;
  //     });

  double balance(int tIndex) {
    if (tIndex < 0) return 0.0;
    double amount = 0;
    try {
      // amount = transactions[tIndex].transactionAmount ?? 0.0;
    } catch (e) {
      print(e);
    }

    if (tIndex == 0) {
      return netTotal - amount;
    }
    return netTotal - prevAmounts(tIndex + 1);
  }

  double get discount {
    double discount = 0.0;

    return discount;
  }

  double get netTotal => grossTotal - discount;
}
