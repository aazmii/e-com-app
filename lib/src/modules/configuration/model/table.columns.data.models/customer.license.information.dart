import 'dart:convert';

class CustomerLicenseInformation {
  final String? purchaseDate;
  final String? licenceType;
  final String? licenceExpiredDate;
  CustomerLicenseInformation({
    this.purchaseDate,
    this.licenceType,
    this.licenceExpiredDate,
  });

  CustomerLicenseInformation copyWith({
    String? purchaseDate,
    String? licenceType,
    String? licenceExpiredDate,
  }) {
    return CustomerLicenseInformation(
      purchaseDate: purchaseDate ?? this.purchaseDate,
      licenceType: licenceType ?? this.licenceType,
      licenceExpiredDate: licenceExpiredDate ?? this.licenceExpiredDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'purchaseDate': purchaseDate,
      'licenceType': licenceType,
      'licenceExpiredDate': licenceExpiredDate,
    };
  }

  static CustomerLicenseInformation fromMap(Map<String, dynamic> map) {
    return CustomerLicenseInformation(
      purchaseDate: map['purchaseDate'] as String?,
      licenceType: map['licenceType'] as String?,
      licenceExpiredDate: map['licenceExpiredDate'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  static CustomerLicenseInformation fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
