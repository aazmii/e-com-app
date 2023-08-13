part of 'order.dart';

extension OrderExtension on Order {
  double get grossTotal => products!.fold(0.00, (prevValue, item) {
        final quantity = item.quantity ?? 1;
        final price = double.tryParse(item.price ?? '0.00') ?? 0.00;
        return (prevValue + (quantity * price));
      });

  double get allAmount => transactions!.toList().fold(0.0, (p, t) {
        double amount = t.transactionAmount ?? 0;
        return p + amount;
      });

  double prevAmounts(int indexUntil) =>
      transactions!.sublist(0, indexUntil).fold(0.0, (p, t) {
        double amount = t.transactionAmount ?? 0;
        return p + amount;
      });
  double get receivedAmount => transactions!.fold(0.0, (p, t) {
        double amount = t.transactionAmount ?? 0;
        return p + amount;
      });

  double balance({required int index}) {
    double amount = transactions![index].transactionAmount ?? 0.0;
    if (index == 0) {
      return netTotal - amount;
    }
    return netTotal - prevAmounts(index + 1);
  }

  double get discount {
    double discount = 0.0;
    switch (discountType) {
      case DiscountType.cash:
        if (discountFactor != null) {
          discount = discountFactor!;
        }
        break;
      case DiscountType.percentage:
        if (discountFactor != null) {
          discount = (discountFactor! / 100) * grossTotal;
        }
        break;
    }
    return discount;
  }

  double get netTotal => grossTotal - discount;
}
