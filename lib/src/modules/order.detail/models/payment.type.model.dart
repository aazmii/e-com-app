 

 
import 'package:pos_sq/src/constants/constants.dart';

class PaymentTypeModel {
 
  PaymentType paymentType;
  bool? isSelected;
  PaymentTypeModel({
    this.paymentType = PaymentType.cash,
    this.isSelected = false,
  });
  PaymentTypeModel copyWith({
    int? paymentId,
    PaymentType? paymentType,
    bool? isSelected,
  }) =>
      PaymentTypeModel(
        paymentType: paymentType ?? this.paymentType,
        isSelected: isSelected ?? this.isSelected,
      );
}
