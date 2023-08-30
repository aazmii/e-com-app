import 'package:pos_sq/src/models/order/order.dart';

import 'models/order/item.dart';
import 'models/payment_details/payment.detail.dart';

const jsonData =
    '''
{
    "customername": "Rabbi hasan",
    "customerphone": "01681194424",
    "loyalitycard": "32lkafj",
    "items": [
        {
            "id": "1",
            "name": "Product One",
            "count": 3,
            "price": 100.00,
            "imageurl": "dfadsfs"
        } ,
        {
            "id": "2",
            "name": "Product Two",
            "count": 1,
            "price": 200.00,
            "imageurl": "dfadsfs"
        } ,
        {
            "id": "3",
            "name": "Product Three",
            "count": 4,
            "price": 300.00,
            "imageurl": null
        }
    ],
    "subtotal": 1700.00,
    "grosstotal": 1700.00,
    "discountamount": 34,
    "discounttype": "2,%",
    "vatorgst": 0.00,
    "nettotal": 1666.00,
    "receivedamount": 1700.00,
    "returnamount": 34.00,
    "paymentdetails": [
        {
            "paymenttype": "cash",
            "transactiondetails": "vai pocket theke disi",
            "amount": 1000.00
        },
        {
            "paymenttype": "card",
            "transactiondetails": "ebl theke disi",
            "amount": 500
        },
        {
            "paymenttype": "bkash",
            "transactiondetails": "bkash theke disi",
            "amount": 200
        }
    ],
    "posid": "123kkdkja",
    "posuserid": "321ikakd"
}
''';
final demoOrderObject = Order(
  posId: "2330",
  posUserId: "user1234",
  customerName: "Anas",
  customerPhone: "20390392",
  loyalityCard: "loyaltiy394985",
  items: [
    Item(
      id: "xyz",
      name: "kkejriw",
    )
  ],
  subTotal: 23.54,
  grossTotal: 43.245,
  discountAmount: 34,
  discountType: "cash",
  vatorgst: 24.43,
  netTotal: 543.23,
  receivedAmount: 35.5,
  returnAmount: 235.3,
  paymentDetails: [
    PaymentDetail(
      paymentType: "cash",
      transactionDetails: "this is details",
      amount: 34.43,
    ),
  ],
  orderTime: DateTime.now(),
);
