import 'dart:convert';

class ShopNavBar {
  final String? storeLogo;
  final String? storeLogoThumbnale;
  final String? storeName;
  final String? topnavbarFirstbutton;
  final String? topnavSecondbutton;
  final String? topnavThirdbutton;
  final String? topnavFourthbutton;
  final String? topnavFifthbutton;
  final String? topnavSixthbutton;
  final String? topnavLastbuttonCart;
  ShopNavBar({
    this.storeLogo,
    this.storeLogoThumbnale,
    this.storeName,
    this.topnavbarFirstbutton,
    this.topnavSecondbutton,
    this.topnavThirdbutton,
    this.topnavFourthbutton,
    this.topnavFifthbutton,
    this.topnavSixthbutton,
    this.topnavLastbuttonCart,
  });

  ShopNavBar copyWith({
    String? storeLogo,
    String? storeLogoThumbnale,
    String? storeName,
    String? topnavbarFirstbutton,
    String? topnavSecondbutton,
    String? topnavThirdbutton,
    String? topnavFourthbutton,
    String? topnavFifthbutton,
    String? topnavSixthbutton,
    String? topnavLastbuttonCart,
  }) {
    return ShopNavBar(
      storeLogo: storeLogo ?? this.storeLogo,
      storeLogoThumbnale: storeLogoThumbnale ?? this.storeLogoThumbnale,
      storeName: storeName ?? this.storeName,
      topnavbarFirstbutton: topnavbarFirstbutton ?? this.topnavbarFirstbutton,
      topnavSecondbutton: topnavSecondbutton ?? this.topnavSecondbutton,
      topnavThirdbutton: topnavThirdbutton ?? this.topnavThirdbutton,
      topnavFourthbutton: topnavFourthbutton ?? this.topnavFourthbutton,
      topnavFifthbutton: topnavFifthbutton ?? this.topnavFifthbutton,
      topnavSixthbutton: topnavSixthbutton ?? this.topnavSixthbutton,
      topnavLastbuttonCart: topnavLastbuttonCart ?? this.topnavLastbuttonCart,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storeLogo': storeLogo,
      'storeLogoThumbnale': storeLogoThumbnale,
      'storeName': storeName,
      'topnavbarFirstbutton': topnavbarFirstbutton,
      'topnavSecondbutton': topnavSecondbutton,
      'topnavThirdbutton': topnavThirdbutton,
      'topnavFourthbutton': topnavFourthbutton,
      'topnavFifthbutton': topnavFifthbutton,
      'topnavSixthbutton': topnavSixthbutton,
      'topnavLastbuttonCart': topnavLastbuttonCart,
    };
  }

  static ShopNavBar fromMap(Map<String, dynamic> map) {
    return ShopNavBar(
      storeLogo: map['storeLogo'] as String?,
      storeLogoThumbnale: map['storeLogoThumbnale'] as String?,
      storeName: map['storeName'] as String?,
      topnavbarFirstbutton: map['topnavbarFirstbutton'] as String?,
      topnavSecondbutton: map['topnavSecondbutton'] as String?,
      topnavThirdbutton: map['topnavThirdbutton'] as String?,
      topnavFourthbutton: map['topnavFourthbutton'] as String?, 
      topnavFifthbutton: map['topnavFifthbutton'] as String?,
      topnavSixthbutton: map['topnavSixthbutton'] as String?,
      topnavLastbuttonCart: map['topnavLastbuttonCart'] as String?,
    );
  }
   String toJson() => json.encode(toMap());

  static ShopNavBar fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
