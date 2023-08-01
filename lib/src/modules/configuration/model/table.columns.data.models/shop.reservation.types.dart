import 'dart:convert';

class ShopReservationTypes {
  final String? privateReservationTitle;
  final String? privateReservationDiscription;
  final List<PrivateReservationRestaurentFecility>?
      privateReservationRestaurentFecilities;
  final List<String>? privateReservationLocation;
  final List<String>? privateReservationTimePeriod;
  final List<String>? contractWithManagerEmail;
  final List<String>? contractWithManagerphone;
  final String? corporateReservationTitle;
  final String? corporateReservationDescription;
  final List<CorporateReservationFecility>? corporateReservationFecilities;
  final List<String>? corporateReservationLocation;
  final String? eventReservationTitle;
  final String? eventReservationDiscription;
  final List<EventReservationFecilitie>? eventReservationFecilities;
  final List<String>? eventReservationLocation;
  final List<String>? eventReservationTimePeriod;
  ShopReservationTypes({
    this.privateReservationTitle,
    this.privateReservationDiscription,
    this.privateReservationRestaurentFecilities,
    this.privateReservationLocation,
    this.privateReservationTimePeriod,
    this.contractWithManagerEmail,
    this.contractWithManagerphone,
    this.corporateReservationTitle,
    this.corporateReservationDescription,
    this.corporateReservationFecilities,
    this.corporateReservationLocation,
    this.eventReservationTitle,
    this.eventReservationDiscription,
    this.eventReservationFecilities,
    this.eventReservationLocation,
    this.eventReservationTimePeriod,
  });

  ShopReservationTypes copyWith({
    String? privateReservationTitle,
    String? privateReservationDiscription,
    List<PrivateReservationRestaurentFecility>?
        privateReservationRestaurentFecilities,
    List<String>? privateReservationLocation,
    List<String>? privateReservationTimePeriod,
    List<String>? contractWithManagerEmail,
    List<String>? contractWithManagerphone,
    String? corporateReservationTitle,
    String? corporateReservationDescription,
    List<CorporateReservationFecility>? corporateReservationFecilities,
    List<String>? corporateReservationLocation,
    String? eventReservationTitle,
    String? eventReservationDiscription,
    List<EventReservationFecilitie>? eventReservationFecilities,
    List<String>? eventReservationLocation,
    List<String>? eventReservationTimePeriod,
  }) {
    return ShopReservationTypes(
      privateReservationTitle:
          privateReservationTitle ?? this.privateReservationTitle,
      privateReservationDiscription:
          privateReservationDiscription ?? this.privateReservationDiscription,
      privateReservationRestaurentFecilities:
          privateReservationRestaurentFecilities ??
              this.privateReservationRestaurentFecilities,
      privateReservationLocation:
          privateReservationLocation ?? this.privateReservationLocation,
      privateReservationTimePeriod:
          privateReservationTimePeriod ?? this.privateReservationTimePeriod,
      contractWithManagerEmail:
          contractWithManagerEmail ?? this.contractWithManagerEmail,
      contractWithManagerphone:
          contractWithManagerphone ?? this.contractWithManagerphone,
      corporateReservationTitle:
          corporateReservationTitle ?? this.corporateReservationTitle,
      corporateReservationDescription: corporateReservationDescription ??
          this.corporateReservationDescription,
      corporateReservationFecilities:
          corporateReservationFecilities ?? this.corporateReservationFecilities,
      corporateReservationLocation:
          corporateReservationLocation ?? this.corporateReservationLocation,
      eventReservationTitle:
          eventReservationTitle ?? this.eventReservationTitle,
      eventReservationDiscription:
          eventReservationDiscription ?? this.eventReservationDiscription,
      eventReservationFecilities:
          eventReservationFecilities ?? this.eventReservationFecilities,
      eventReservationLocation:
          eventReservationLocation ?? this.eventReservationLocation,
      eventReservationTimePeriod:
          eventReservationTimePeriod ?? this.eventReservationTimePeriod,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateReservationTitle': privateReservationTitle,
      'privateReservationDiscription': privateReservationDiscription,
      'privateReservationRestaurentFecilities':
          privateReservationRestaurentFecilities
              ?.map((x) => x.toMap())
              .toList(),
      'privateReservationLocation': privateReservationLocation,
      'privateReservationTimePeriod': privateReservationTimePeriod,
      'contractWithManagerEmail': contractWithManagerEmail,
      'contractWithManagerphone': contractWithManagerphone,
      'corporateReservationTitle': corporateReservationTitle,
      'corporateReservationDescription': corporateReservationDescription,
      'corporateReservationFecilities':
          corporateReservationFecilities?.map((x) => x.toMap()).toList(),
      'corporateReservationLocation': corporateReservationLocation,
      'eventReservationTitle': eventReservationTitle,
      'eventReservationDiscription': eventReservationDiscription,
      'eventReservationFecilities':
          eventReservationFecilities?.map((x) => x.toMap()).toList(),
      'eventReservationLocation': eventReservationLocation,
      'eventReservationTimePeriod': eventReservationTimePeriod,
    };
  }

  static ShopReservationTypes fromMap(Map<String, dynamic> map) {
    return ShopReservationTypes(
      privateReservationTitle: map['privateReservationTitle'] as String?,
      privateReservationDiscription:
          map['privateReservationDiscription'] as String?,
      privateReservationRestaurentFecilities:
          map['privateReservationRestaurentFecilities'] != null
              ? List<PrivateReservationRestaurentFecility>.from(
                  (map['privateReservationRestaurentFecilities'] as List<int>)
                      .map<PrivateReservationRestaurentFecility>(
                    (x) => PrivateReservationRestaurentFecility.fromMap(
                        x as Map<String, dynamic>),
                  ),
                )
              : null,
      privateReservationLocation: map['privateReservationLocation'] != null
          ? List<String>.from(
              (map['privateReservationLocation'] as List<dynamic>),
            )
          : null,
      privateReservationTimePeriod: map['privateReservationTimePeriod'] != null
          ? (map['privateReservationTimePeriod'] as List)
              .map((e) => e as String)
              .toList()
          : null,
      contractWithManagerEmail: map['contractWithManagerEmail'] != null
          ? (map['contractWithManagerEmail'] as List)
              .map((e) => e as String)
              .toList()
          : null,
      contractWithManagerphone: map['contractWithManagerphone'] != null
          ? (map['contractWithManagerphone'] as List)
              .map((e) => e as String)
              .toList()
          : null,
      corporateReservationTitle: map['corporateReservationTitle'] as String?,
      corporateReservationDescription:
          map['corporateReservationDescription'] as String?,
      corporateReservationFecilities:
          map['corporateReservationFecilities'] != null
              ? (map['corporateReservationFecilities'] as List)
                  .map<CorporateReservationFecility>((e) =>
                      CorporateReservationFecility.fromMap(
                          e as Map<String, dynamic>))
                  .toList()
              : null,
      corporateReservationLocation: map['corporateReservationLocation'] != null
          ? (map['corporateReservationLocation'] as List)
              .map((e) => e as String)
              .toList()
          : null,
      eventReservationTitle: map['eventReservationTitle'] as String?,
      eventReservationDiscription:
          map['eventReservationDiscription'] as String?,
      eventReservationFecilities: map['eventReservationFecilities'] != null
          ? (map['eventReservationFecilities'] as List)
              .map<EventReservationFecilitie>((e) =>
                  EventReservationFecilitie.fromMap(e as Map<String, dynamic>))
              .toList()
          : null,
      eventReservationLocation: map['eventReservationLocation'] != null
          ? (map['eventReservationLocation'] as List)
              .map((e) => e as String)
              .toList()
          : null,
      eventReservationTimePeriod: map['eventReservationTimePeriod'] != null
          ? (map['eventReservationTimePeriod'] as List)
              .map((e) => e as String)
              .toList()
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  static ShopReservationTypes fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class PrivateReservationRestaurentFecility {
  final String iconOrImage;
  final String facilityName;
  PrivateReservationRestaurentFecility({
    required this.iconOrImage,
    required this.facilityName,
  });

  PrivateReservationRestaurentFecility copyWith({
    String? iconOrImage,
    String? facilityName,
  }) {
    return PrivateReservationRestaurentFecility(
      iconOrImage: iconOrImage ?? this.iconOrImage,
      facilityName: facilityName ?? this.facilityName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconOrImage': iconOrImage,
      'facilityName': facilityName,
    };
  }

  static PrivateReservationRestaurentFecility fromMap(
      Map<String, dynamic> map) {
    return PrivateReservationRestaurentFecility(
      iconOrImage: map['iconOrImage'] as String,
      facilityName: map['facilityName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static PrivateReservationRestaurentFecility fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class CorporateReservationFecility {
  final String? iconOrImage;
  final String? facilityName;
  CorporateReservationFecility({
    this.iconOrImage,
    this.facilityName,
  });

  CorporateReservationFecility copyWith({
    String? iconOrImage,
    String? facilityName,
  }) {
    return CorporateReservationFecility(
      iconOrImage: iconOrImage ?? this.iconOrImage,
      facilityName: facilityName ?? this.facilityName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconOrImage': iconOrImage,
      'facilityName': facilityName,
    };
  }

  static CorporateReservationFecility fromMap(Map<String, dynamic> map) {
    return CorporateReservationFecility(
      iconOrImage: map['iconOrImage'] as String,
      facilityName: map['facilityName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static CorporateReservationFecility fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}

class EventReservationFecilitie {
  final String? iconOrImage;
  final String? facilityName;
  EventReservationFecilitie({
    this.iconOrImage,
    this.facilityName,
  });

  EventReservationFecilitie copyWith({
    String? iconOrImage,
    String? facilityName,
  }) {
    return EventReservationFecilitie(
      iconOrImage: iconOrImage ?? this.iconOrImage,
      facilityName: facilityName ?? this.facilityName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconOrImage': iconOrImage,
      'facilityName': facilityName,
    };
  }

  static EventReservationFecilitie fromMap(Map<String, dynamic> map) {
    return EventReservationFecilitie(
      iconOrImage: map['iconOrImage'] as String,
      facilityName: map['facilityName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  static EventReservationFecilitie fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);
}
