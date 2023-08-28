// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqflite/sqflite.dart';

import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/models/payment_details/payment_details.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

part 'customer.order.ext.dart';

class Order {
  String? posId;
  String? posUserId;
  String? customerName;
  String? customerPhone;

  String? loyalityCard;
  List<Product>? items;
  double? subtotal;
  double? grossTotal;

  int? discountAmount;
  String? discountType;
  double? vatorgst;
  double? netTotal;

  double? receivedAmount;
  double? returnAmount;
  List<PaymentDetails>? paymentDetails;
  DateTime? dateTime;

  Order({
    this.posId,
    this.posUserId,
    this.customerName,
    this.customerPhone,
    this.loyalityCard,
    this.items,
    this.subtotal,
    this.grossTotal,
    this.discountAmount,
    this.discountType,
    this.vatorgst,
    this.netTotal,
    this.receivedAmount,
    this.returnAmount,
    this.paymentDetails,
    this.dateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'posId': posId,
      'posUserId': posUserId,
      'customerName': customerName,
      'customerPhone': customerPhone,
      'loyalityCard': loyalityCard,
      'items': items?.map((x) => x.toMap()).toList(),
      'subtotal': subtotal,
      'grossTotal': grossTotal,
      'discountAmount': discountAmount,
      'discountType': discountType,
      'vatorgst': vatorgst,
      'netTotal': netTotal,
      'receivedAmount': receivedAmount,
      'returnAmount': returnAmount,
      'paymentdetails': paymentDetails?.map((x) => x.toMap()).toList(),
      'dateTime': dateTime?.millisecondsSinceEpoch,
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      posId: map['posId'] != null ? map['posId'] as String : null,
      posUserId: map['posUserId'] != null ? map['posUserId'] as String : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      customerPhone:
          map['customerPhone'] != null ? map['customerPhone'] as String : null,
      loyalityCard:
          map['loyalityCard'] != null ? map['loyalityCard'] as String : null,
      items: map['items'] != null
          ? List<Product>.from(
              (map['items'] as List<int>).map<Product?>(
                (x) => Product.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      subtotal: map['subtotal'] != null ? map['subtotal'] as double : null,
      grossTotal:
          map['grossTotal'] != null ? map['grossTotal'] as double : null,
      discountAmount:
          map['discountAmount'] != null ? map['discountAmount'] as int : null,
      discountType:
          map['discountType'] != null ? map['discountType'] as String : null,
      vatorgst: map['vatorgst'] != null ? map['vatorgst'] as double : null,
      netTotal: map['netTotal'] != null ? map['netTotal'] as double : null,
      receivedAmount: map['receivedAmount'] != null
          ? map['receivedAmount'] as double
          : null,
      returnAmount:
          map['returnAmount'] != null ? map['returnAmount'] as double : null,
      paymentDetails: map['paymentdetails'] != null
          ? List<PaymentDetails>.from(
              (map['paymentdetails'] as List<int>).map<PaymentDetails?>(
                (x) => PaymentDetails.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      dateTime: map['dateTime'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['dateTime'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  Order copyWith({
    String? posId,
    String? posUserId,
    String? customerName,
    String? customerPhone,
    String? loyalityCard,
    List<Product>? items,
    double? subtotal,
    double? grossTotal,
    int? discountAmount,
    String? discountType,
    double? vatorgst,
    double? netTotal,
    double? receivedAmount,
    double? returnAmount,
    List<PaymentDetails>? paymentDetails,
    DateTime? dateTime,
  }) {
    return Order(
      posId: posId ?? this.posId,
      posUserId: posUserId ?? this.posUserId,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      loyalityCard: loyalityCard ?? this.loyalityCard,
      items: items ?? this.items,
      subtotal: subtotal ?? this.subtotal,
      grossTotal: grossTotal ?? this.grossTotal,
      discountAmount: discountAmount ?? this.discountAmount,
      discountType: discountType ?? this.discountType,
      vatorgst: vatorgst ?? this.vatorgst,
      netTotal: netTotal ?? this.netTotal,
      receivedAmount: receivedAmount ?? this.receivedAmount,
      returnAmount: returnAmount ?? this.returnAmount,
      paymentDetails: paymentDetails ?? this.paymentDetails,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
