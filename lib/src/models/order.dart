// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/order.detail/models/transaction.dart';

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

  get orderValue => [
        orderId,
        savedTime,
        products,
        discountFactor,
        transactions,
        discountAmout,
        discountType
      ];

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'orderId': orderId,
      'savedTime': savedTime?.millisecondsSinceEpoch,
      'products': null,
      'transactions': null,
      'discountAmout': discountAmout,
      'discountFactor': discountFactor,
      'discountType': null,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      orderId: map['orderId'] != null ? map['orderId'] as int : null,
      savedTime: map['savedTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['savedTime'] as int)
          : null,
      products: map['products'] != null
          ? List<Product>.from(
              (map['products'] as List<int>).map<Product?>(
                (x) => Product.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      transactions: null,
      discountAmout:
          map['discountAmout'] != null ? map['discountAmout'] as double : null,
      discountFactor: map['discountFactor'] != null
          ? map['discountFactor'] as double
          : null,
      discountType: DiscountType.cash,
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;

    return other.orderId == orderId &&
        other.savedTime == savedTime &&
        listEquals(other.products, products) &&
        listEquals(other.transactions, transactions) &&
        other.discountAmout == discountAmout &&
        other.discountFactor == discountFactor &&
        other.discountType == discountType;
  }

  @override
  int get hashCode {
    return orderId.hashCode ^
        savedTime.hashCode ^
        products.hashCode ^
        transactions.hashCode ^
        discountAmout.hashCode ^
        discountFactor.hashCode ^
        discountType.hashCode;
  }

  @override
  String toString() {
    return 'Order(orderId: $orderId, savedTime: $savedTime, products: $products, transactions: $transactions, discountAmout: $discountAmout, discountFactor: $discountFactor, discountType: $discountType)';
  }
}
