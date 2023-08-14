import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/order.detail/models/transaction.dart';
import 'package:sqflite/sqflite.dart';

part 'order.db.methods.dart';

class Order {
  int? orderId;
  DateTime? savedTime;

  List<Product>? products;

  List<CustomerTransaction>? transactions;
  double? discountAmout;
  double? discountFactor;

  DiscountType discountType;
  Order({
    this.orderId,
    this.savedTime,
    this.products,
    this.discountFactor,
    this.transactions,
    this.discountAmout,
    this.discountType = DiscountType.cash,
  });

  Order copyWith({
    int? orderId,
    DateTime? savedTime,
    List<Product>? products,
    List<CustomerTransaction>? transactions,
    double? discountAmout,
    double? discountFactor,
    DiscountType? discountType,
  }) {
    return Order(
      orderId: orderId ?? this.orderId,
      savedTime: savedTime ?? this.savedTime,
      discountFactor: discountFactor ?? this.discountFactor,
      products: products ?? this.products,
      transactions: transactions ?? this.transactions,
      discountAmout: discountAmout ?? this.discountAmout,
      discountType: discountType ?? this.discountType,
    );
  }
}
