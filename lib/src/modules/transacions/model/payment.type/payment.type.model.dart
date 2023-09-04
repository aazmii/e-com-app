import 'package:pos_sq/src/constants/constants.dart';


class PaymentTypeModel {
  PaymentType paymentType;
  bool? isSelected;
  PaymentTypeModel({
    this.paymentType = PaymentType.none,
    this.isSelected = false,
  });
  PaymentTypeModel copyWith({
    PaymentType? paymentType,
    bool? isSelected,
  }) =>
      PaymentTypeModel(
        paymentType: paymentType ?? this.paymentType,
        isSelected: isSelected ?? this.isSelected,
      );
}
