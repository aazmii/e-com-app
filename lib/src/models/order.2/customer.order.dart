// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
 import 'package:sqflite/sqflite.dart';
part 'customer.order.ext.dart';
class CustomerOrder {
  String? posId;
  String? posUserId;
  String? customerName;

  String? customerPhone;
  String? loyalityCard;
  String? orderId;

  List<Product>? products;
  double? grossTotal;
  double? discountAmount;

  String? disocuntName;
  String? discountType;
  double? netTotal;

  double? receivedAmount;
  String? receivedAmountDetail;
  double? returnAmount;

  DateTime? dateTime;
  CustomerOrder({
    this.posId,
    this.posUserId,
    this.customerName,
    this.customerPhone,
    this.loyalityCard,
    this.orderId,
    this.products,
    this.grossTotal,
    this.discountAmount,
    this.disocuntName,
    this.discountType,
    this.netTotal,
    this.receivedAmount,
    this.receivedAmountDetail,
    this.returnAmount,
    this.dateTime,
  });

  CustomerOrder copyWith({
    String? posId,
    String? posUserId,
    String? customerName,
    String? customerPhone,
    String? loyalityCard,
    String? orderId,
    List<Product>? products,
    double? grossTotal,
    double? discountAmount,
    String? disocuntName,
    String? discountType,
    double? netTotal,
    double? receivedAmount,
    String? receivedAmountDetail,
    double? returnAmount,
    DateTime? dateTime,
  }) {
    return CustomerOrder(
      posId: posId ?? this.posId,
      posUserId: posUserId ?? this.posUserId,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      loyalityCard: loyalityCard ?? this.loyalityCard,
      orderId: orderId ?? this.orderId,
      products: products ?? this.products,
      grossTotal: grossTotal ?? this.grossTotal,
      discountAmount: discountAmount ?? this.discountAmount,
      disocuntName: disocuntName ?? this.disocuntName,
      discountType: discountType ?? this.discountType,
      netTotal: netTotal ?? this.netTotal,
      receivedAmount: receivedAmount ?? this.receivedAmount,
      receivedAmountDetail: receivedAmountDetail ?? this.receivedAmountDetail,
      returnAmount: returnAmount ?? this.returnAmount,
      dateTime: dateTime ?? this.dateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posId': posId,
      'posUserId': posUserId,
      'customerName': customerName,
      'customerPhone': customerPhone,
      'loyalityCard': loyalityCard,
      'orderId': orderId,
      'products': null,
      'grossTotal': grossTotal,
      'discountAmount': discountAmount,
      'disocuntName': disocuntName,
      'discountType': discountType,
      'netTotal': netTotal,
      'receivedAmount': receivedAmount,
      'receivedAmountDetail': receivedAmountDetail,
      'returnAmount': returnAmount,
      'dateTime': dateTime?.millisecondsSinceEpoch,
    };
  }

  factory CustomerOrder.fromMap(Map<String, dynamic> map) {
    return CustomerOrder(
      posId: map['posId'] != null ? map['posId'] as String : null,
      posUserId: map['posUserId'] != null ? map['posUserId'] as String : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      customerPhone:
          map['customerPhone'] != null ? map['customerPhone'] as String : null,
      loyalityCard:
          map['loyalityCard'] != null ? map['loyalityCard'] as String : null,
      orderId: map['orderId'] != null ? map['orderId'] as String : null,
      products: null,
      grossTotal:
          map['grossTotal'] != null ? map['grossTotal'] as double : null,
      discountAmount: map['discountAmount'] != null
          ? map['discountAmount'] as double
          : null,
      disocuntName:
          map['disocuntName'] != null ? map['disocuntName'] as String : null,
      discountType:
          map['discountType'] != null ? map['discountType'] as String : null,
      netTotal: map['netTotal'] != null ? map['netTotal'] as double : null,
      receivedAmount: map['receivedAmount'] != null
          ? map['receivedAmount'] as double
          : null,
      receivedAmountDetail: map['receivedAmountDetail'] != null
          ? map['receivedAmountDetail'] as String
          : null,
      returnAmount:
          map['returnAmount'] != null ? map['returnAmount'] as double : null,
      dateTime: map['dateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerOrder.fromJson(String source) =>
      CustomerOrder.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CustomerOrder(posId: $posId, posUserId: $posUserId, customerName: $customerName, customerPhone: $customerPhone, loyalityCard: $loyalityCard, orderId: $orderId, products: $products, grossTotal: $grossTotal, discountAmount: $discountAmount, disocuntName: $disocuntName, discountType: $discountType, netTotal: $netTotal, receivedAmount: $receivedAmount, receivedAmountDetail: $receivedAmountDetail, returnAmount: $returnAmount, dateTime: $dateTime)';
  }

  @override
  bool operator ==(covariant CustomerOrder other) {
    if (identical(this, other)) return true;

    return other.posId == posId &&
        other.posUserId == posUserId &&
        other.customerName == customerName &&
        other.customerPhone == customerPhone &&
        other.loyalityCard == loyalityCard &&
        other.orderId == orderId &&
        listEquals(other.products, products) &&
        other.grossTotal == grossTotal &&
        other.discountAmount == discountAmount &&
        other.disocuntName == disocuntName &&
        other.discountType == discountType &&
        other.netTotal == netTotal &&
        other.receivedAmount == receivedAmount &&
        other.receivedAmountDetail == receivedAmountDetail &&
        other.returnAmount == returnAmount &&
        other.dateTime == dateTime;
  }

  @override
  int get hashCode {
    return posId.hashCode ^
        posUserId.hashCode ^
        customerName.hashCode ^
        customerPhone.hashCode ^
        loyalityCard.hashCode ^
        orderId.hashCode ^
        products.hashCode ^
        grossTotal.hashCode ^
        discountAmount.hashCode ^
        disocuntName.hashCode ^
        discountType.hashCode ^
        netTotal.hashCode ^
        receivedAmount.hashCode ^
        receivedAmountDetail.hashCode ^
        returnAmount.hashCode ^
        dateTime.hashCode;
  }
}
