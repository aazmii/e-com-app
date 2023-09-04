part of '../order.dart';

extension OrderDbExt on Order {
  Future<void> onNameChange(String s) async =>
      _updateCustomerInfo('customer_name', s);

  Future<void> onPhoneChange(String s) async =>
      _updateCustomerInfo('customer_phone', s);

  Future<void> onLoyalityCardChanged(String s) async =>
      _updateCustomerInfo('loyality_card', s);

  Future<bool> removeItem(String id) async {
    final db = await LocalDB.database;
    try {
      final result = await db.query(
        'orders',
        columns: ['items'],
        where: 'sl = ?',
        whereArgs: [sl],
      );
      final jsonStr = result[0]['items'] as String?;
      List<dynamic> itemJsonList = json.decode(jsonStr!);

      itemJsonList.removeWhere((json) => jsonDecode(json)['id'] == id);

      await db.update(
        'orders',
        {
          'items': json.encode(itemJsonList),
        },
        where: 'sl = ?',
        whereArgs: [sl],
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> addItem(Item item) async {
    final db = await LocalDB.database;

    try {
      final result = await db.query(
        'orders',
        columns: ['items'],
        where: 'sl = ?',
        whereArgs: [sl],
      );
      final jsonStr = result[0]['items'] as String?;
      //not first item
      if (jsonStr != 'null') {
        final List itemJsonList = json.decode(jsonStr!);
        final items = itemJsonList.map((e) {
          return Item.fromJson(e);
        }).toList();

        if (items.contains(item)) {
          await increaseQuantity(item.id!);
        } else {
          itemJsonList.add(item.toJson());
          db.update(
            'orders',
            {
              'items': json.encode(itemJsonList),
            },
            where: 'sl = ?',
            whereArgs: [sl],
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        }
      } else {
        //first item
        await db.update(
          'orders',
          {
            'items': json.encode([item.toJson()]),
          },
          where: 'sl = ?',
          whereArgs: [sl],
        );
      }
      return true;
    } catch (e) {
      return false;
    }
  }

  Future increaseQuantity(String id) async {
    final db = await LocalDB.database;
    final result = await db.query(
      'orders',
      columns: ['items'],
      where: 'sl = ?',
      whereArgs: [sl],
    );

    final jsonStr = result[0]['items'] as String?;
    if (jsonStr == 'null') return;
    List<dynamic> jsonList = json.decode(jsonStr!);

    for (var jsonItem in jsonList) {
      Map<String, dynamic>? map;
      map = json.decode(jsonItem);
      if (map == null) return;
      if (map['id'] == id) {
        final updatedCount = map['count'] + 1;

        jsonList.removeWhere((e) => json.decode(e)['id'] == id);
        map.update('count', (value) => updatedCount);
        jsonList.add(Item.fromMap(map).toJson());
      }
    }
    await db.update(
      'orders',
      {'items': jsonEncode(jsonList)},
      where: 'sl = ?',
      whereArgs: [sl],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future decreaseQuantity(Item item) async {
    final db = await LocalDB.database;
    final result = await db.query(
      'orders',
      columns: ['items'],
      where: 'sl = ?',
      whereArgs: [sl],
    );

    final jsonStr = result[0]['items'] as String?;
    if (jsonStr == 'null') return;
    List<dynamic> jsonList = json.decode(jsonStr!);

    for (var jsonItem in jsonList) {
      Map<String, dynamic>? map;
      map = json.decode(jsonItem);
      if (map == null) return;
      // if (map['count'] <= 1 ) return;
      if (map['id'] == item.id && map['count'] > 1) {
        final updatedCount = map['count'] - 1;

        jsonList.removeWhere((e) => json.decode(e)['id'] == item.id);
        map.update('count', (value) => updatedCount);
        jsonList.add(Item.fromMap(map).toJson());
      }
    }
    await db.update(
      'orders',
      {'items': jsonEncode(jsonList)},
      where: 'sl = ?',
      whereArgs: [sl],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<bool> deleteFromDb() async {
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
      ///
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
              '${json.encode(items?.map((e) => e.toJson()).toList())}',
              '$subTotal',
              '$grossTotal',

              '$discountAmount',
              '$discountType',
              '$vatorgst',
              '$netTotal',

              '$receivedAmount',
              '$returnAmount',
              '${json.encode(paymentDetails?.map((e) => e.toJson()).toList())}',

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
