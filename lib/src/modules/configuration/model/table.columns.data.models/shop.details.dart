import 'dart:convert';

class ShopDetails {
  final String? licenceInformation;
  final String? storeName;
  final String? storeOpeningDate;
  final String? tradeLicenceNo;
  final String? tradeLicencePicture;
  final String? storeOwnerName;
  final String? storeOwnerCellPhone;
  final String? storeOwnerEmail;
  final String? storeOwnerStateRegisteredIDNationalIDPassport;
  final String? storeCellNo;
  final String? storeEmail;
  final List<String>? storeAddress;
  final String? storeGoogleMapLink;
  final String? storeOpeningTime;
  final String? storeClosingTime;
  final String? storeManagerName;
  final String? storeManagerCellPhone;
  final String? storeManagerEmail;
  final String? enableGoogleMapDropPinWithinAppWebpage;
  final String? intigradeStoreGoogleAPI;
  ShopDetails({
    this.licenceInformation,
    this.storeName,
    this.storeOpeningDate,
    this.tradeLicenceNo,
    this.tradeLicencePicture,
    this.storeOwnerName,
    this.storeOwnerCellPhone,
    this.storeOwnerEmail,
    this.storeOwnerStateRegisteredIDNationalIDPassport,
    this.storeCellNo,
    this.storeEmail,
    this.storeAddress,
    this.storeGoogleMapLink,
    this.storeOpeningTime,
    this.storeClosingTime,
    this.storeManagerName,
    this.storeManagerCellPhone,
    this.storeManagerEmail,
    this.enableGoogleMapDropPinWithinAppWebpage,
    this.intigradeStoreGoogleAPI,
  });

  ShopDetails copyWith({
    String? licenceInformation,
    String? storeName,
    String? storeOpeningDate,
    String? tradeLicenceNo,
    String? tradeLicencePicture,
    String? storeOwnerName,
    String? storeOwnerCellPhone,
    String? storeOwnerEmail,
    String? storeOwnerStateRegisteredIDNationalIDPassport,
    String? storeCellNo,
    String? storeEmail,
    List<String>? storeAddress,
    String? storeGoogleMapLink,
    String? storeOpeningTime,
    String? storeClosingTime,
    String? storeManagerName,
    String? storeManagerCellPhone,
    String? storeManagerEmail,
    String? enableGoogleMapDropPinWithinAppWebpage,
    String? intigradeStoreGoogleAPI,
  }) {
    return ShopDetails(
      licenceInformation: licenceInformation ?? this.licenceInformation,
      storeName: storeName ?? this.storeName,
      storeOpeningDate: storeOpeningDate ?? this.storeOpeningDate,
      tradeLicenceNo: tradeLicenceNo ?? this.tradeLicenceNo,
      tradeLicencePicture: tradeLicencePicture ?? this.tradeLicencePicture,
      storeOwnerName: storeOwnerName ?? this.storeOwnerName,
      storeOwnerCellPhone: storeOwnerCellPhone ?? this.storeOwnerCellPhone,
      storeOwnerEmail: storeOwnerEmail ?? this.storeOwnerEmail,
      storeOwnerStateRegisteredIDNationalIDPassport:
          storeOwnerStateRegisteredIDNationalIDPassport ??
              this.storeOwnerStateRegisteredIDNationalIDPassport,
      storeCellNo: storeCellNo ?? this.storeCellNo,
      storeEmail: storeEmail ?? this.storeEmail,
      storeAddress: storeAddress ?? this.storeAddress,
      storeGoogleMapLink: storeGoogleMapLink ?? this.storeGoogleMapLink,
      storeOpeningTime: storeOpeningTime ?? this.storeOpeningTime,
      storeClosingTime: storeClosingTime ?? this.storeClosingTime,
      storeManagerName: storeManagerName ?? this.storeManagerName,
      storeManagerCellPhone:
          storeManagerCellPhone ?? this.storeManagerCellPhone,
      storeManagerEmail: storeManagerEmail ?? this.storeManagerEmail,
      enableGoogleMapDropPinWithinAppWebpage:
          enableGoogleMapDropPinWithinAppWebpage ??
              this.enableGoogleMapDropPinWithinAppWebpage,
      intigradeStoreGoogleAPI:
          intigradeStoreGoogleAPI ?? this.intigradeStoreGoogleAPI,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenceInformation': licenceInformation,
      'storeName': storeName,
      'storeOpeningDate': storeOpeningDate,
      'tradeLicenceNo': tradeLicenceNo,
      'tradeLicencePicture': tradeLicencePicture,
      'storeOwnerName': storeOwnerName,
      'storeOwnerCellPhone': storeOwnerCellPhone,
      'storeOwnerEmail': storeOwnerEmail,
      'storeOwnerStateRegisteredIDNationalIDPassport':
          storeOwnerStateRegisteredIDNationalIDPassport,
      'storeCellNo': storeCellNo,
      'storeEmail': storeEmail,
      'storeAddress': storeAddress,
      'storeGoogleMapLink': storeGoogleMapLink,
      'storeOpeningTime': storeOpeningTime,
      'storeClosingTime': storeClosingTime,
      'storeManagerName': storeManagerName,
      'storeManagerCellPhone': storeManagerCellPhone,
      'storeManagerEmail': storeManagerEmail,
      'enableGoogleMapDropPinWithinAppWebpage':
          enableGoogleMapDropPinWithinAppWebpage,
      'intigradeStoreGoogleAPI': intigradeStoreGoogleAPI,
    };
  }

  static ShopDetails fromMap(Map<String, dynamic> map) {
    return ShopDetails(
      licenceInformation: map['licenceInformation'] as String?,
      storeName: map['storeName'] as String?,
      storeOpeningDate: map['storeOpeningDate'] as String?,
      tradeLicenceNo: map['tradeLicenceNo'] as String?,
      tradeLicencePicture: map['tradeLicencePicture'] as String?,
      storeOwnerName: map['storeOwnerName'] as String?,
      storeOwnerCellPhone: map['storeOwnerCellPhone'] as String?,
      storeOwnerEmail: map['storeOwnerEmail'] as String?,
      storeOwnerStateRegisteredIDNationalIDPassport:
          map['storeOwnerStateRegisteredIDNationalIDPassport'] as String?,
      storeCellNo: map['storeCellNo'] as String?,
      storeEmail: map['storeEmail'] as String?,
      storeAddress: map['storeAddress'] != null
          ? List<String>.from(
              (map['storeAddress'] as List<String>),
            )
          : null,
      storeGoogleMapLink: map['storeGoogleMapLink'],
      storeOpeningTime: map['storeOpeningTime'] as String?,
      storeClosingTime: map['storeClosingTime'] as String?,
      storeManagerName: map['storeManagerName'] as String?,
      storeManagerCellPhone: map['storeManagerCellPhone'] as String?,
      storeManagerEmail: map['storeManagerEmail'] as String?,
      enableGoogleMapDropPinWithinAppWebpage:
          map['enableGoogleMapDropPinWithinAppWebpage'] as String?,
      intigradeStoreGoogleAPI: map['intigradeStoreGoogleAPI'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  static ShopDetails fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
