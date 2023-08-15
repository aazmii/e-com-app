part of 'order.dart';

extension OrderExtension on Order {
  createTable(Database db) async {
    await db.execute('''
          CREATE TABLE order (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            savedTime  TIMESTAMP, 
            products JSONB,
            discountFactor DECIMAL, 
            transactions JSONB,
            discountAmout DECIMAL, 
            quantity INT
          )
    ''');
  }

  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO product(
              name,
              price,
              discountPrice,
              images,
              description,
              quantity
            )
            VALUES('$orderId',
            '$savedTime',
            '$products',
            '$discountFactor',
            '$transactions',
            '$discountType'
     
            )
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }
}
