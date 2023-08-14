part of 'customer.order.dart';

extension PaymentExt on CustomerOrder {
  createTable(Database db) async {
    await db.execute(
        '''
          CREATE TABLE payment (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,
              
              amount DOUBLE,
              payment_detail_Id VARCHAR,
              order_id VARCHAR,
              payment_type VARCHAR, 
              transaction_detail VARCHAR
           )
          ''');
  }

  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert(
          '''
            INSERT INTO category(
            
              amount,
              payment_detail_Id,
              order_id,
              payment_type, 
              transaction_detail
            )
            VALUES(
          
            )
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }
}
