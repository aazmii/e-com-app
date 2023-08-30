part of 'order.dart';

extension OrderExt on Order {
  Future<bool> saveInLocalDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO orders(
             
              pos_id,
              pos_user_id,
              customer_name,
              customer_phone,

              loyality_card,
              items,
              sub_total,
              gross_total,

              discount_amount,
              discount_type,
              vat_or_gst,
              net_total,

              received_amount,
              return_amount ,
              payment_details

            )
            VALUES(
              '$posId',
              '$posUserId',
              '$customerName',
              '$customerPhone',

              '$loyalityCard',
              '${items?.map((e) => e.toJson()).toList()}',
              '$subTotal',
              '$grossTotal',

              '$discountAmount',
              '$discountType',
              '$vatorgst',
              '$netTotal',

              '$receivedAmount',
              '$returnAmount',
              '${paymentDetails?.map((e) => e.toJson()).toList()}'

            )
      ''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
