import 'dart:convert';

class ShopHomeScrollPage {
  final String? typeOfView;
  final List<FirstScrollData>? firstScrollData;
  final List<SecondScrollData>? secondScrollData;
  final List<ThirdScrollData>? thirdScrollData;
  ShopHomeScrollPage({
    this.typeOfView,
    this.firstScrollData,
    this.secondScrollData,
    this.thirdScrollData,
  });

  ShopHomeScrollPage copyWith({
    String? typeOfView,
    List<FirstScrollData>? firstScrollData,
    List<SecondScrollData>? secondScrollData,
    List<ThirdScrollData>? thirdScrollData,
  }) {
    return ShopHomeScrollPage(
      typeOfView: typeOfView ?? this.typeOfView,
      firstScrollData: firstScrollData ?? this.firstScrollData,
      secondScrollData: secondScrollData ?? this.secondScrollData,
      thirdScrollData: thirdScrollData ?? this.thirdScrollData,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeOfView': typeOfView,
      'firstScrollData': firstScrollData?.map((x) => x.toMap()).toList(),
      'secondScrollData': secondScrollData?.map((x) => x.toMap()).toList(),
      'thirdScrollData': thirdScrollData?.map((x) => x.toMap()).toList(),
    };
  }

  static ShopHomeScrollPage fromMap(Map<String, dynamic> map) {
    return ShopHomeScrollPage(
      typeOfView: map['typeOfView'] as String?,
      firstScrollData: map['firstScrollData'] != null
          ? List<FirstScrollData>.from(
              (map['firstScrollData'] as List<dynamic>).map<FirstScrollData>(
                (x) => FirstScrollData.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      secondScrollData: map['secondScrollData']!=null? List<SecondScrollData>.from(
        (map['secondScrollData'] as List<dynamic>).map<SecondScrollData>(
          (x) => SecondScrollData.fromMap(x as Map<String, dynamic>),
        ),
      ):null,
      thirdScrollData: map['thirdScrollData']!=null? List<ThirdScrollData>.from(
        (map['thirdScrollData'] as List<int>).map<ThirdScrollData>(
          (x) => ThirdScrollData.fromMap(x as Map<String, dynamic>),
        ),
      ):null,
    );
  }

  String toJson() => json.encode(toMap());

  static ShopHomeScrollPage fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class FirstScrollData {
  final String? image1;
  final String? boldText1;
  final String? description;
  final String? button1;
  FirstScrollData({
    this.image1,
    this.boldText1,
    this.description,
    this.button1,
  });

  FirstScrollData copyWith({
    String? image1,
    String? boldText1,
    String? description,
    String? button1,
  }) {
    return FirstScrollData(
      image1: image1 ?? this.image1,
      boldText1: boldText1 ?? this.boldText1,
      description: description ?? this.description,
      button1: button1 ?? this.button1,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image1': image1,
      'boldText1': boldText1,
      'description': description,
      'button1': button1,
    };
  }

  static FirstScrollData fromMap(Map<String, dynamic> map) {
    return FirstScrollData(
      image1: map['image1'] as String,
      boldText1: map['boldText1'] as String,
      description: map['description'] as String,
      button1: map['button1'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static FirstScrollData fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class SecondScrollData {
  final String? image2;
  final String? boldText2;
  final String? description;
  final String? button2;
  SecondScrollData({
    this.image2,
    this.boldText2,
    this.description,
    this.button2,
  });

  SecondScrollData copyWith({
    String? image2,
    String? boldText2,
    String? description,
    String? button2,
  }) {
    return SecondScrollData(
      image2: image2 ?? this.image2,
      boldText2: boldText2 ?? this.boldText2,
      description: description ?? this.description,
      button2: button2 ?? this.button2,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image2': image2,
      'boldText2': boldText2,
      'description': description,
      'button2': button2,
    };
  }

  static SecondScrollData fromMap(Map<String, dynamic> map) {
    return SecondScrollData(
      image2: map['image2'] as String,
      boldText2: map['boldText2'] as String,
      description: map['description'] as String,
      button2: map['button2'] as String,
    );
  }

  static SecondScrollData fromJson(String source) =>
      SecondScrollData.fromMap(json.decode(source) as Map<String, dynamic>);
  String toJson() => json.encode(toMap());
}

class ThirdScrollData {
  final String? image3;
  final String? boldText3;
  final String? description;
  final String? button3;
  ThirdScrollData({
    this.image3,
    this.boldText3,
    this.description,
    this.button3,
  });

  ThirdScrollData copyWith({
    String? image3,
    String? boldText3,
    String? description,
    String? button3,
  }) {
    return ThirdScrollData(
      image3: image3 ?? this.image3,
      boldText3: boldText3 ?? this.boldText3,
      description: description ?? this.description,
      button3: button3 ?? this.button3,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image3': image3,
      'boldText3': boldText3,
      'description': description,
      'button3': button3,
    };
  }

  static ThirdScrollData fromMap(Map<String, dynamic> map) {
    return ThirdScrollData(
      image3: map['image3'] as String,
      boldText3: map['boldText3'] as String,
      description: map['description'] as String,
      button3: map['button3'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static ThirdScrollData fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
