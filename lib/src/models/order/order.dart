import 'dart:convert';

import 'package:pos_sq/src/models/order/item.dart';
import 'package:pos_sq/src/models/payment_details/payment.detail.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:sqflite/sqflite.dart';

part 'order.ext.dart';

class Order {
  String? customerName;
  String? customerPhone;
  String? loyalityCard;
  List<Item>? items;
  double? subTotal;
  double? grossTotal;
  double? discountAmount;
  String? discountType;
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
  static Future createTable(Database db) async {
    await db.execute('''
          CREATE TABLE orders (
          sl INTEGER PRIMARY KEY AUTOINCREMENT,

          pos_id VARCHAR,
          pos_user_id VARCHAR,
          customer_name VARCHAR,
          customer_phone VARCHAR,

          loyality_card VARCHAR,
          items JSONB,
          sub_total DOUBLE,
          gross_total DOUBLE,

          discount_amount DOUBLE,
          discount_type VARCHAR,
          vat_or_gst DOUBLE,
          net_total DOUBLE,

          received_amount,
          return_amount ,
          payment_details,
          order_time
          )
    ''');
  }

  Order copyWith({
    String? customerName,
    String? customerPhone,
    String? loyalityCard,
    List<Item>? items,
    double? subTotal,
    double? grossTotal,
    double? discountAmount,
    String? discountType,
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
      customerName: map['customer_name'] as String,
      customerPhone: map['customer_phone'] as String,
      loyalityCard: map['loyality_card'] as String,
      items: (jsonDecode(map['items']) as List).map((e) {
        return Item.fromMap(e as Map<String, dynamic>);
      }).toList(),
      subTotal: map['sub_total'] != null ? map['sub_total'] as double : null,
      grossTotal:
          map['gross_total'] != null ? map['gross_total'] as double : null,
      discountAmount: map['discount_amount'] != null
          ? map['discount_amount'] as double
          : null,
      discountType: map['discount_type'] as String,
      vatorgst: map['vat_or_gst'] != null ? map['vat_or_gst'] as double : null,
      netTotal: map['net_total'] != null ? map['net_total'] as double : null,
      receivedAmount: map['received_amount'] != null
          ? double.parse(map['received_amount'])
          : null,
      returnAmount: map['return_amount'] != null
          ? double.parse(map['return_amount'])
          : null,
      paymentDetails: (jsonDecode(map['payment_details']) as List).map((e) {
        return PaymentDetail.fromDbMap(e as Map<String, dynamic>);
      }).toList(),
      posId: map['pos_id'] as String,
      posUserId: map['pos_user_id'] as String,
      orderTime: map['order_ime'] != null ? map['order_ime'] as DateTime : null,
    );
  }

  static Order fromMap(Map<String, dynamic> map) {
    return Order(
      customerName: map['customername'] as String?,
      customerPhone: map['customerphone'] as String?,
      loyalityCard: map['loyalitycard'] as String?,

      // items: List<Item>.from(
      //   (map['items'] as List<double>).map<Item>(
      //     (x) => Item.fromMap(x as Map<String, dynamic>),
      //   ),
      // ),

      subTotal: map['subtotal'].todouble() as double,
      grossTotal: map['grosstotal'].todouble() as double,
      discountAmount: map['discountamount'].todouble() as double,
      discountType: map['discounttype'] as String,
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

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Order(customerName: $customerName, customerPhone: $customerPhone, loyalityCard: $loyalityCard, items: $items, subTotal: $subTotal, grossTotal: $grossTotal, discountAmount: $discountAmount, discountType: $discountType, vatorgst: $vatorgst, netTotal: $netTotal, receivedAmount: $receivedAmount, returnAmount: $returnAmount, paymentDetails: $paymentDetails, posId: $posId, posUserId: $posUserId)';
  }
}
