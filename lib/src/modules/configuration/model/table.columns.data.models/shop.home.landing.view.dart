import 'dart:convert';

class ShopHomeLandingView {
  final String? typeOfView;
  final List<LandingData>? landingData;
  ShopHomeLandingView({
    this.typeOfView,
    this.landingData,
  });

  ShopHomeLandingView copyWith({
    String? typeOfView,
    List<LandingData>? landingData,
  }) {
    return ShopHomeLandingView(
      typeOfView: typeOfView ?? this.typeOfView,
      landingData: landingData ?? this.landingData,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeOfView': typeOfView,
      'landingData': landingData?.map((x) => x.toMap()).toList(),
    };
  }

  static ShopHomeLandingView fromMap(Map<String, dynamic> map) {
    return ShopHomeLandingView(
      typeOfView: map['typeOfView'] as String,
      landingData: map['landingData'] != null
          ? List<LandingData>.from(
              (map['landingData'] as List<dynamic>).map<LandingData>(
                (x) => LandingData.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  static ShopHomeLandingView fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class LandingData {
  final String? landingImage1;
  final String? boldText1;
  final String? description;
  final String? button1;
  LandingData({
    this.landingImage1,
    this.boldText1,
    this.description,
    this.button1,
  });

  LandingData copyWith({
    String? landingImage1,
    String? boldText1,
    String? description,
    String? button1,
  }) {
    return LandingData(
      landingImage1: landingImage1 ?? this.landingImage1,
      boldText1: boldText1 ?? this.boldText1,
      description: description ?? this.description,
      button1: button1 ?? this.button1,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'landingImage1': landingImage1,
      'boldText1': boldText1,
      'description': description,
      'button1': button1,
    };
  }

  static LandingData fromMap(Map<String, dynamic> map) {
    return LandingData(
      landingImage1: map['landingImage1'] as String,
      boldText1: map['boldText1'] as String,
      description: map['description'] as String,
      button1: map['button1'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static LandingData fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
