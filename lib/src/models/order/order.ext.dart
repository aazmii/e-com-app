part of 'order.dart';

extension OrderExt on Order {
  Future<void> onNameChange(String s) async =>
      _updateCustomerInfo('customer_name', s);

  Future<void> onPhoneChange(String s) async =>
      _updateCustomerInfo('customer_phone', s);

  Future<void> onLoyalityCardChanged(String s) async =>
      _updateCustomerInfo('loyality_card', s);

  Future addItem(Item item) async {
    // final db = await LocalDB.database;

    try {
      // await db.update(
      //   'orders',
      //   {
      //     'items': [item.toJson()]
      //   },
      //   where: 'sl =?',
      //   whereArgs: [sl],
      // );
    } catch (e) {
      print(e);
    }
  }

  Future<bool> delete() async {
    if (sl == null) return false;
    return (await LocalDB.deleteTableRowBySl(tableName: 'orders', sl: sl!)) == 1
        ? true
        : false;
  }

  Future _updateCustomerInfo(
    String columnName,
    String s,
  ) async {
    final db = await LocalDB.database;

    try {
      await db.update(
        'orders',
        {columnName: s},
        where: 'sl = ?',
        whereArgs: [sl],
      );
    } catch (e) {
      print(e);
    }
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
              sub_total,
              gross_total,

              discount_amount,
              discount_type,
              vat_or_gst,
              net_total,

              received_amount,
              return_amount ,
              payment_details, 

              order_time

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
              '${paymentDetails?.map((e) => e.toJson()).toList()}',

              '$orderTime'

            )
      ''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
