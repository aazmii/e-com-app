import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/payment.detail/model/payment.detail.dart';

part '../../../../models/src/order.calculation.ext.dart';

enum ChangeType { increase, decrease }

class Order {
  int? sl;

  String? customerName;
  String? customerPhone;
  String? loyalityCard;
  List<Item>? items;
  double? subTotal;
  double? grossTotal;
  double? discountAmount;
  DiscountType? discountType;
  double? vatorgst;
  double? netTotal;
  double? receivedAmount;
  double? returnAmount;
  List<PaymentDetail>? paymentDetails;
  String? posId;
  String? posUserId;
  DateTime? orderTime;

  //used locally
  List<Product>? products;

  Order({
    this.sl,
    this.customerName,
    this.customerPhone,
    this.loyalityCard,
    this.items,
    this.subTotal,
    this.grossTotal,
    this.discountAmount,
    this.discountType,
    this.vatorgst,
    this.netTotal,
    this.receivedAmount,
    this.returnAmount,
    this.paymentDetails,
    this.posId,
    this.posUserId,
    this.orderTime,
    this.products,
  });

  Order copyWith({
    String? customerName,
    String? customerPhone,
    String? loyalityCard,
    List<Item>? items,
    double? subTotal,
    double? grossTotal,
    double? discountAmount,
    DiscountType? discountType,
    double? vatorgst,
    double? netTotal,
    double? receivedAmount,
    double? returnAmount,
    List<PaymentDetail>? paymentDetails,
    String? posId,
    String? posUserId,
  }) {
    return Order(
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      loyalityCard: loyalityCard ?? this.loyalityCard,
      items: items ?? this.items,
      subTotal: subTotal ?? this.subTotal,
      grossTotal: grossTotal ?? this.grossTotal,
      discountAmount: discountAmount ?? this.discountAmount,
      discountType: discountType ?? this.discountType,
      vatorgst: vatorgst ?? this.vatorgst,
      netTotal: netTotal ?? this.netTotal,
      receivedAmount: receivedAmount ?? this.receivedAmount,
      returnAmount: returnAmount ?? this.returnAmount,
      paymentDetails: paymentDetails ?? this.paymentDetails,
      posId: posId ?? this.posId,
      posUserId: posUserId ?? this.posUserId,
    );
  }

  static Order fromTableData(OrderTableData d) {
    final order = Order(
      customerName: d.customerName,
      customerPhone: d.customerPhone,
      loyalityCard: d.loyalityCard,
      items: d.items != null
          ? (jsonDecode(d.items!) as List).map((e) {
              return Item.fromMap(jsonDecode(e));
            }).toList()
          : null,
      subTotal: d.subTotal,
      grossTotal: d.grossTotal,
      discountAmount: d.discountAmount,
      vatorgst: d.vatorgst,
      netTotal: d.netTotal,
      receivedAmount: d.receivedAmount,
      returnAmount: d.returnAmount,
      paymentDetails: d.paymentDetails != null
          ? (jsonDecode(d.paymentDetails!) as List).map((e) {
              return PaymentDetail.fromMap(jsonDecode(e));
            }).toList()
          : null,
      posId: d.posId,
      posUserId: d.posUserId,
      orderTime: d.orderDateTime,
      discountType: stringToPaymentType(d.discountType),
    );

    return order;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customername': customerName,
      'customerphone': customerPhone,
      'loyalitycard': loyalityCard,
      'items': items?.map((x) => x.toMap()).toList(),
      'subtotal': subTotal,
      'grosstotal': grossTotal,
      'discountamount': discountAmount,
      'discounttype': discountType,
      'vatorgst': vatorgst,
      'nettotal': netTotal,
      'receivedamount': receivedAmount,
      'returnamount': returnAmount,
      'paymentdetails': paymentDetails?.map((x) => x.toMap()).toList(),
      'posid': posId,
      'posuserid': posUserId,
      'orderTime': orderTime
    };
  }

  static Order fromDbMap(Map<String, dynamic> map) {
    return Order(
      sl: map['sl'] as int,
      customerName: map['customer_name'] as String,
      customerPhone: map['customer_phone'] as String,
      loyalityCard: map['loyality_card'] as String,
      items: map['items'] != 'null'
          ? (jsonDecode(map['items']) as List).map((e) {
              return Item.fromJson(e);
            }).toList()
          : null,
      subTotal: map['sub_total'] != 'null' ? map['sub_total'] as double : null,
      grossTotal:
          map['gross_total'] != 'null' ? map['gross_total'] as double : null,
      discountAmount: map['discount_amount'] != 'null'
          ? map['discount_amount'] as double
          : null,
      discountType: null,
      vatorgst:
          map['vat_or_gst'] != 'null' ? map['vat_or_gst'] as double : null,
      netTotal: map['net_total'] != 'null' ? map['net_total'] as double : null,
      receivedAmount: map['received_amount'] != 'null'
          ? double.parse(map['received_amount'])
          : null,
      returnAmount: map['return_amount'] != 'null'
          ? double.parse(map['return_amount'])
          : null,
      paymentDetails: null,
      posId: map['pos_id'] as String,
      posUserId: map['pos_user_id'] as String,
      orderTime: map['order_time'] != 'null'
          ? DateTime.parse(map['order_time'])
          : null,
    );
  }

  static Order fromMap(Map<String, dynamic> map) {
    return Order(
      customerName: map['customername'] as String?,
      customerPhone: map['customerphone'] as String?,
      loyalityCard: map['loyalitycard'] as String?,
      items: List<Item>.from(
        (map['items'] as List<dynamic>).map<Item>(
          (x) => Item.fromMap(x as Map<String, dynamic>),
        ),
      ),
      subTotal: map['subtotal'].todouble() as double,
      grossTotal: map['grosstotal'].todouble() as double,
      discountAmount: map['discountamount'].todouble() as double,
      discountType: null,
      vatorgst: map['vatorgst'].todouble() as double,
      netTotal: map['nettotal'].todouble() as double,
      receivedAmount: map['receivedamount'].todouble() as double,
      returnAmount: map['returnamount'].todouble() as double,
      paymentDetails: List<PaymentDetail>.from(
        (map['paymentdetails'] as List<double>).map<PaymentDetail>(
          (x) => PaymentDetail.fromMap(x as Map<String, dynamic>),
        ),
      ),
      posId: map['posid'] as String,
      posUserId: map['posuserid'] as String,
      orderTime: map['orderTime'] != null ? map['orderTime'] as DateTime : null,
    );
  }

  static DiscountType? stringToPaymentType(String? input) {
    if (input == null) return null;
    switch (input.toLowerCase()) {
      case 'cash':
        return DiscountType.cash;
      case 'percentage':
        return DiscountType.percentage;
      default:
        return null;
      // throw Exception("Invalid payment type string: $input");
    }
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Order(customerName: $customerName, customerPhone: $customerPhone, loyalityCard: $loyalityCard, items: $items, subTotal: $subTotal, grossTotal: $grossTotal, discountAmount: $discountAmount, discountType: $discountType, vatorgst: $vatorgst, netTotal: $netTotal, receivedAmount: $receivedAmount, returnAmount: $returnAmount, paymentDetails: $paymentDetails, posId: $posId, posUserId: $posUserId)';
  }
}
