import 'dart:convert';

class CustomerCartEnableField {
  final List<VisualPurchaseType>? visualPurchaseType;
  CustomerCartEnableField({
    this.visualPurchaseType,
  });

  CustomerCartEnableField copyWith({
    List<VisualPurchaseType>? visualPurchaseType,
  }) {
    return CustomerCartEnableField(
      visualPurchaseType: visualPurchaseType ?? this.visualPurchaseType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'visualPurchaseType': visualPurchaseType?.map((x) => x.toMap()).toList(),
    };
  }

  static CustomerCartEnableField fromMap(Map<String, dynamic> map) {
    return CustomerCartEnableField(
      visualPurchaseType: (map['visualPurchaseType'] as List)
          .map<VisualPurchaseType>(
              (e) => VisualPurchaseType.fromMap(e as Map<String, dynamic>))
          .toList(),
      // visualPurchaseType: List<VisualPurchaseType>.from(
      //   (map['visualPurchaseType'] as List<int>).map<VisualPurchaseType>(
      //     (x) => VisualPurchaseType.fromMap(x as Map<String, dynamic>),
      //   ),
      // ),
    );
  }

  String toJson() => json.encode(toMap());

  static CustomerCartEnableField fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class VisualPurchaseType {
  final String? purchaseType;
  VisualPurchaseType({
    this.purchaseType,
  });

  VisualPurchaseType copyWith({
    String? purchaseType,
  }) {
    return VisualPurchaseType(
      purchaseType: purchaseType ?? this.purchaseType,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purchaseType': purchaseType,
    };
  }

  static VisualPurchaseType fromMap(Map<String, dynamic> map) {
    return VisualPurchaseType(
      purchaseType: map['purchaseType'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static VisualPurchaseType fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
