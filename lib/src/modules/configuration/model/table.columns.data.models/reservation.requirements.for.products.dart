import 'dart:convert';

class ReservationRequirementsForProducts {
  final bool? isSpecialReqirenment;
  final bool? isDineIn;
  final bool? isCurtly;
  ReservationRequirementsForProducts({
    this.isSpecialReqirenment,
    this.isDineIn,
    this.isCurtly,
  });

  ReservationRequirementsForProducts copyWith({
    bool? isSpecialReqirenment,
    bool? isDineIn,
    bool? isCurtly,
  }) {
    return ReservationRequirementsForProducts(
      isSpecialReqirenment: isSpecialReqirenment ?? this.isSpecialReqirenment,
      isDineIn: isDineIn ?? this.isDineIn,
      isCurtly: isCurtly ?? this.isCurtly,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSpecialReqirenment': isSpecialReqirenment,
      'isDineIn': isDineIn,
      'isCurtly': isCurtly,
    };
  }

  static ReservationRequirementsForProducts fromMap(Map<String, dynamic> map) {
    return ReservationRequirementsForProducts(
      isSpecialReqirenment: map['isSpecialReqirenment'] as bool,
      isDineIn: map['isDineIn'] as bool,
      isCurtly: map['isCurtly'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  static ReservationRequirementsForProducts fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
