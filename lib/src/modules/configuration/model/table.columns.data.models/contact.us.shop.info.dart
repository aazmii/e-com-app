import 'dart:convert';

class ContactUsShopInfo {
  final String? shopGooglemapLocationLong;
  final String? shopGooglemapLocationLat;
  final String? locationLogo;
  final String? shopAddress;
  final List<String>? shopContactNumber;
  final String? shopSocialLinkLOGO1;
  final String? shopSocialLinkURL1;
  final String? shopSocialLinkLOGO2;
  final String? shopSocialLinkURL2;
  final String? shopSocialLinkLOGO3;
  final String? shopSocialLinkURL3;
  ContactUsShopInfo({
    this.shopGooglemapLocationLong,
    this.shopGooglemapLocationLat,
    this.locationLogo,
    this.shopAddress,
    this.shopContactNumber,
    this.shopSocialLinkLOGO1,
    this.shopSocialLinkURL1,
    this.shopSocialLinkLOGO2,
    this.shopSocialLinkURL2,
    this.shopSocialLinkLOGO3,
    this.shopSocialLinkURL3,
  });

  ContactUsShopInfo copyWith({
    String? shopGooglemapLocationLong,
    String? shopGooglemapLocationLat,
    String? locationLogo,
    String? shopAddress,
    List<String>? shopContactNumber,
    String? shopSocialLinkLOGO1,
    String? shopSocialLinkURL1,
    String? shopSocialLinkLOGO2,
    String? shopSocialLinkURL2,
    String? shopSocialLinkLOGO3,
    String? shopSocialLinkURL3,
  }) {
    return ContactUsShopInfo(
      shopGooglemapLocationLong:
          shopGooglemapLocationLong ?? this.shopGooglemapLocationLong,
      shopGooglemapLocationLat:
          shopGooglemapLocationLat ?? this.shopGooglemapLocationLat,
      locationLogo: locationLogo ?? this.locationLogo,
      shopAddress: shopAddress ?? this.shopAddress,
      shopContactNumber: shopContactNumber ?? this.shopContactNumber,
      shopSocialLinkLOGO1: shopSocialLinkLOGO1 ?? this.shopSocialLinkLOGO1,
      shopSocialLinkURL1: shopSocialLinkURL1 ?? this.shopSocialLinkURL1,
      shopSocialLinkLOGO2: shopSocialLinkLOGO2 ?? this.shopSocialLinkLOGO2,
      shopSocialLinkURL2: shopSocialLinkURL2 ?? this.shopSocialLinkURL2,
      shopSocialLinkLOGO3: shopSocialLinkLOGO3 ?? this.shopSocialLinkLOGO3,
      shopSocialLinkURL3: shopSocialLinkURL3 ?? this.shopSocialLinkURL3,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shopGooglemapLocationLong': shopGooglemapLocationLong,
      'shopGooglemapLocationLat': shopGooglemapLocationLat,
      'locationLogo': locationLogo,
      'shopAddress': shopAddress,
      'shopContactNumber': shopContactNumber,
      'shopSocialLinkLOGO1': shopSocialLinkLOGO1,
      'shopSocialLinkURL1': shopSocialLinkURL1,
      'shopSocialLinkLOGO2': shopSocialLinkLOGO2,
      'shopSocialLinkURL2': shopSocialLinkURL2,
      'shopSocialLinkLOGO3': shopSocialLinkLOGO3,
      'shopSocialLinkURL3': shopSocialLinkURL3,
    };
  }

  static ContactUsShopInfo fromMap(Map<String, dynamic> map) {
    return ContactUsShopInfo(
      shopGooglemapLocationLong: map['shopGooglemapLocationLong'] as String?,
      shopGooglemapLocationLat: map['shopGooglemapLocationLat'] as String?,
      locationLogo: map['locationLogo'] as String?,
      shopAddress: map['shopAddress'] as String?,
      shopContactNumber: map['shopContactNumber']!=null?
        (map['shopContactNumber'] as List).map((e) => e as String).toList():null,
    
      shopSocialLinkLOGO1: map['shopSocialLinkLOGO1'] as String?,
      shopSocialLinkURL1: map['shopSocialLinkURL1'] as String?,
      shopSocialLinkLOGO2: map['shopSocialLinkLOGO2'] as String?,
      shopSocialLinkURL2: map['shopSocialLinkURL2'] as String?,
      shopSocialLinkLOGO3: map['shopSocialLinkLOGO3'] as String?,
      shopSocialLinkURL3: map['shopSocialLinkURL3'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  static ContactUsShopInfo fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
