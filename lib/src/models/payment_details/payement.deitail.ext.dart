part of 'payment.detail.dart';

extension PaymentDetailExt on PaymentDetail {
  Future<bool> saveInLocalDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert(
          '''
            INSERT INTO payment_detail(
              payment_type ,
              transaction_details ,
              amount 
            )
            VALUES(
               '$paymentType',
               '$transactionDetails', 
               '$amount' 
            )
      ''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
