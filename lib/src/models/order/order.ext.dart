part of 'order.dart';

extension OrderExt on Order {
  Future<void> onNameChange(String s) async =>
      _updateCustomerInfo('customer_name', s);

  Future<void> onPhoneChange(String s) async =>
      _updateCustomerInfo('customer_phone', s);

  Future<void> onLoyalityCardChanged(String s) async =>
      _updateCustomerInfo('loyality_card', s);

  Future removeItem(String id) async {
    final db = await LocalDB.database;
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
  }

  Future addItem(Item item) async {
    final db = await LocalDB.database;
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
        await changeItemQuantity(
          item,
          ChangeType.increase,
        );
      } else {
        itemJsonList.add(item.toJson());
        await db.update(
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
  }

  Future changeItemQuantity(
    Item? item,
    ChangeType type,
  ) async {
    final db = await LocalDB.database;
    if (item == null) return;
    int? updatedCount;
    final result = await db.query(
      'orders',
      columns: ['items'],
      where: 'sl = ?',
      whereArgs: [sl],
    );

    final jsonStr = result[0]['items'] as String?;
    if (jsonStr == 'null') return;
    final List<dynamic> jsonList = json.decode(jsonStr!);

    Map<String, dynamic>? map;
    for (var jsonItem in jsonList) {
      map = json.decode(jsonItem);
      if (map == null) return;
      if (map['id'] == item.id) {
        switch (type) {
          case ChangeType.increase:
            updatedCount = map['count'] + 1;
          case ChangeType.decrease:
            if (map['count'] <= 1) return;
            updatedCount = map['count'] - 1;
            break;
        }
        map.update('count', (value) => updatedCount);
      }
    }
    jsonList.removeWhere((e) => json.decode(e)['id'] == item.id);
    jsonList.add(Item.fromMap(map!).toJson());

    await db.update(
      'orders',
      {
        'items': jsonEncode(jsonList),
      },
      where: 'sl = ?',
      whereArgs: [sl],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
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
