// ignore_for_file: avoid_print

part of 'customer.order.dart';

extension CustomerOrderExt on Order {
  Future createTable(Database db) async {
    await db.execute('''
          CREATE TABLE orders (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,

              pos_id VARCHAR,
              pos_user_id VARCHAR,
              customer_name VARCHAR,
              customer_phone VARCHAR,

              loyality_card VARCHAR,
              items JSON[],
              subtotal DOUBLE,
              gross_total DOUBLE,

              discount_amount INTEGER,
              discount_type VARCHAR,
              vatorgst DOUBLE,
              nettotal DOUBLE,

              received_amount DOUBLE,
              return_amount DOUBLE,
              payment_details JSONB
           )
          ''');
  }

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
              subtotal,
              gross_total,

              discount_amount,
              discount_type,
              vatorgst,
              nettotal,

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
              '$items',
              '$subtotal',
              '$grossTotal',

              '$discountAmount',
              '$discountType',
              '$vatorgst',
              '$netTotal',

              '$receivedAmount',
              '$returnAmount',
              '$paymentDetails'

            )
      ''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
