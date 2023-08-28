// ignore_for_file: avoid_print

part of 'customer.order.dart';

extension CustomerOrderExt on Order {
  createTable(Database db) async {
    await db.execute('''
          CREATE TABLE orders (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,

              posid VARCHAR,
              posuserid VARCHAR,
              customername VARCHAR,
              customerphone VARCHAR,

              loyalitycard VARCHAR,
              items JSON[],
              subtotal DOUBLE,
              grosstotal DOUBLE,

              discountamount INTEGER,
              discounttype VARCHAR,
              vatorgst DOUBLE,
              nettotal DOUBLE,

              receivedamount DOUBLE,
              returnamount DOUBLE,
              paymentdetails JSON[]
           )
          ''');
  }

  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO customerOrder(
              sl INTEGER PRIMARY KEY AUTOINCREMENT,

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
              net_total,

              received_amount,
              return_amount,
              paymentdetails 

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
    }
    return isSuccess;
  }

  Future<void> postRequest() async {
    final Map<String, dynamic> jsonData = {
      "customername": "Rabbi hasan",
      "customerphone": "01681194424",
      "loyalitycard": "32lkafj",
      "subtotal": 1700.00,
      "grosstotal": 1700.00,
      "discountamount": 34,
      "discounttype": "2,%",
      "vatorgst": 0.00,
      "nettotal": 1666.00,
      "receivedamount": 1700.00,
      "returnamount": 34.00,
      "posid": "123kkdkja",
      "posuserid": "321ikakd"
    };

    Future<void> insertOrder(Order order) async {
      final db = await LocalDB().database;
      await db.insert(
        'orders',
        order.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    Order order = Order(
      customerName: jsonData['customername'],
      customerPhone: jsonData['customerphone'],
      discountAmount: jsonData['discountamount'],
      grossTotal: jsonData['grosstotal'],
      subtotal: jsonData['subtotal'],
      discountType: jsonData['discounttype'],
      vatorgst: jsonData['vatorgst'],
      receivedAmount: jsonData['receivedamount'],
      posId: jsonData['posid'],
      posUserId: jsonData['posuserid'],
      loyalityCard: jsonData['loyalitycard'],
    );

    insertOrder(order);
  }
}
