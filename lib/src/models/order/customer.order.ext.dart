part of 'customer.order.dart';

extension CustomerOrderExt on Order {
  static ex(Database db) async {
    await db.execute('''
          CREATE TABLE usageTimeline (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            date TIMESTAMP, 
            time TIMESTAMP,
            gap INT
          )
    ''');
  }

  createTable(Database db) async {
    await db.execute('''
          CREATE TABLE orders (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,

              posId VARCHAR,
              posUserId VARCHAR,
              orderId VARCHAR,

              customerName TEXT,
              customerPhone TEXT,
              loyalityCard TEXT,

              products JSONB,
              grossTotal FLOAT,
              discountAmount FLOAT,

              disocuntName TEXT,
              discountType TEXT,
              netTotal FLOAT,

              receivedAmount FLOAT,
              receivedAmountDetail TEXT,
              returnAmount FLOAT,

              dateTime TIMESTAMP
           )
          ''');
  }

  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO category(
              posId,
              posUserId,
              orderId,

              customerName,
              customerPhone,
              loyalityCard,

              products,
              grossTotal,
              discountAmount,

              disocuntName,
              discountType,
              netTotal,

              receivedAmount,
              receivedAmountDetail,
              returnAmount,

              dateTime
            )
            VALUES(
              '$posId',
              '$posUserId',
              '$orderId',

              '$customerName',
              '$customerPhone',
              '$loyalityCard',

              '$products',
              '$grossTotal',
              '$discountAmount',

              '$disocuntName',
              '$discountType',
              '$netTotal',

              '$receivedAmount',
              '$receivedAmountDetail',
              '$returnAmount',

              '$dateTime' 
            )
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }
}
