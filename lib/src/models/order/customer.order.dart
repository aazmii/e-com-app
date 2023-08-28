// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pos_sq/src/models/payment_details/payment_details.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:sqflite/sqflite.dart';

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

  static Order fromMap(Map<String, dynamic> map) {
    return Order(
      posId: map['posid'] != null ? map['posid'] as String : null,
      posUserId: map['posuserid'] != null ? map['posuserid'] as String : null,
      customerName:
          map['customername'] != null ? map['customername'] as String : null,
      customerPhone:
          map['customerphone'] != null ? map['customerphone'] as String : null,
      loyalityCard:
          map['loyalitycard'] != null ? map['loyalitycard'] as String : null,
      items: map['items'] != null
          ? (map['items'] as List).map((e) => Product.fromMap(e)).toList()
          : null,
      subtotal: map['subtotal'] != null ? map['subtotal'] as double : null,
      grossTotal:
          map['grosstotal'] != null ? map['grosstotal'] as double : null,
      discountAmount:
          map['discountamount'] != null ? map['discountamount'] as int : null,
      discountType:
          map['discounttype'] != null ? map['discounttype'] as String : null,
      vatorgst: map['vatorgst'] != null ? map['vatorgst'] as double : null,
      netTotal: map['nettotal'] != null ? map['nettotal'] as double : null,
      receivedAmount: map['receivedamount'] != null
          ? map['receivedamount'] as double
          : null,
      returnAmount:
          map['returnamount'] != null ? map['returnamount'] as double : null,
      paymentDetails: map['paymentdetails'] != null
          ? (map['paymentdetails'] as List)
              .map((e) => PaymentDetails.fromMap(e))
              .toList()
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

final demoData = {
  "customername": "Rabbi hasan",
  "customerphone": "01681194424",
  "loyalitycard": "32lkafj",
  "items": [
    {
      "id": "1",
      "name": "Product One",
      "count": 3,
      "price": 100.00,
      "imageurl": "dfadsfs"
    },
    {
      "id": "2",
      "name": "Product Two",
      "count": 1,
      "price": 200.00,
      "imageurl": "dfadsfs"
    },
    {
      "id": "3",
      "name": "Product Three",
      "count": 4,
      "price": 300.00,
      "imageurl": null
    }
  ],
  "subtotal": 1700.00,
  "grosstotal": 1700.00,
  "discountamount": 34,
  "discounttype": "2,%",
  "vatorgst": 0.00,
  "nettotal": 1666.00,
  "receivedamount": 1700.00,
  "returnamount": 34.00,
  "paymentdetails": [
    {
      "paymenttype": "cash",
      "transactiondetails": "vai pocket theke disi",
      "amount": 1000.00
    },
    {
      "paymenttype": "card",
      "transactiondetails": "ebl theke disi",
      "amount": 500.00
    },
    {
      "paymenttype": "bkash",
      "transactiondetails": "bkash theke disi",
      "amount": 200.00
    }
  ],
  "posid": "123kkdkja",
  "posuserid": "321ikakd"
};
