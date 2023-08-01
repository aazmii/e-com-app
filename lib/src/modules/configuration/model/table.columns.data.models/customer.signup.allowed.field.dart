import 'dart:convert';

class CustomerSignupAllowedField {
  final bool? isUserFullName;
  final bool? isUserEmail;
  final bool? isUserPhoneNumber;
  final bool? isGoogleSocialAuth;
  final bool? isFacebookSocialAuth;
  final bool? isLinkedInSocialAuth;
  final bool? isTwitterSocialAuth;
  final bool? isAppleSocialAuth;
  final bool? isCustomerCountryName;
  final bool? isCustomerCityName;
  final bool? isCustomerStateName;
  final bool? isCustomerZipNumber;
  final bool? iscustomerLocalAddress;
  CustomerSignupAllowedField({
    this.isUserFullName,
    this.isUserEmail,
    this.isUserPhoneNumber,
    this.isGoogleSocialAuth,
    this.isFacebookSocialAuth,
    this.isLinkedInSocialAuth,
    this.isTwitterSocialAuth,
    this.isAppleSocialAuth,
    this.isCustomerCountryName,
    this.isCustomerCityName,
    this.isCustomerStateName,
    this.isCustomerZipNumber,
    this.iscustomerLocalAddress,
  });

  CustomerSignupAllowedField copyWith({
    bool? isUserFullName,
    bool? isUserEmail,
    bool? isUserPhoneNumber,
    bool? isGoogleSocialAuth,
    bool? isFacebookSocialAuth,
    bool? isLinkedInSocialAuth,
    bool? isTwitterSocialAuth,
    bool? isAppleSocialAuth,
    bool? isCustomerCountryName,
    bool? isCustomerCityName,
    bool? isCustomerStateName,
    bool? isCustomerZipNumber,
    bool? iscustomerLocalAddress,
  }) {
    return CustomerSignupAllowedField(
      isUserFullName: isUserFullName ?? this.isUserFullName,
      isUserEmail: isUserEmail ?? this.isUserEmail,
      isUserPhoneNumber: isUserPhoneNumber ?? this.isUserPhoneNumber,
      isGoogleSocialAuth: isGoogleSocialAuth ?? this.isGoogleSocialAuth,
      isFacebookSocialAuth: isFacebookSocialAuth ?? this.isFacebookSocialAuth,
      isLinkedInSocialAuth: isLinkedInSocialAuth ?? this.isLinkedInSocialAuth,
      isTwitterSocialAuth: isTwitterSocialAuth ?? this.isTwitterSocialAuth,
      isAppleSocialAuth: isAppleSocialAuth ?? this.isAppleSocialAuth,
      isCustomerCountryName:
          isCustomerCountryName ?? this.isCustomerCountryName,
      isCustomerCityName: isCustomerCityName ?? this.isCustomerCityName,
      isCustomerStateName: isCustomerStateName ?? this.isCustomerStateName,
      isCustomerZipNumber: isCustomerZipNumber ?? this.isCustomerZipNumber,
      iscustomerLocalAddress:
          iscustomerLocalAddress ?? this.iscustomerLocalAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isUserFullName': isUserFullName,
      'isUserEmail': isUserEmail,
      'isUserPhoneNumber': isUserPhoneNumber,
      'isGoogleSocialAuth': isGoogleSocialAuth,
      'isFacebookSocialAuth': isFacebookSocialAuth,
      'isLinkedInSocialAuth': isLinkedInSocialAuth,
      'isTwitterSocialAuth': isTwitterSocialAuth,
      'isAppleSocialAuth': isAppleSocialAuth,
      'isCustomerCountryName': isCustomerCountryName,
      'isCustomerCityName': isCustomerCityName,
      'isCustomerStateName': isCustomerStateName,
      'isCustomerZipNumber': isCustomerZipNumber,
      'iscustomerLocalAddress': iscustomerLocalAddress,
    };
  }

  static CustomerSignupAllowedField fromMap(Map<String, dynamic> map) {
    return CustomerSignupAllowedField(
      isUserFullName: map['isUserFullName'] as bool?,
      isUserEmail: map['isUserEmail'] as bool?,
      isUserPhoneNumber: map['isUserPhoneNumber'] as bool?,
      isGoogleSocialAuth: map['isGoogleSocialAuth'] as bool?,
      isFacebookSocialAuth: map['isFacebookSocialAuth'] as bool?,
      isLinkedInSocialAuth: map['isLinkedInSocialAuth'] as bool?,
      isTwitterSocialAuth: map['isTwitterSocialAuth'] as bool?,
      isAppleSocialAuth: map['isAppleSocialAuth'] as bool?,
      isCustomerCountryName: map['isCustomerCountryName'] as bool?,
      isCustomerCityName: map['isCustomerCityName'] as bool?,
      isCustomerStateName: map['isCustomerStateName'] as bool?,
      isCustomerZipNumber: map['isCustomerZipNumber'] as bool?,
      iscustomerLocalAddress: map['iscustomerLocalAddress'] as bool?,
    );
  }
    String toJson() => json.encode(toMap());

static CustomerSignupAllowedField fromJson(String source) =>
       fromMap(json.decode(source) as Map<String, dynamic>);
}
