// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Config {
  String? companyName;
  String? companyShortName;
  String? companyLogo;
  String? companyAddress;
  String? companyCity;
  String? companyCountry;
  String? companyPostCode;
  DateTime? companyLicenseExpireDate, lastUpdate;
  int? daysLeftToExpireLicense;
  String? companyInvoiceHeaderText;
  String? companyInvoiceFooterText;
  ConfigPaymentDetails? paymentDetails;
  Config({
    this.companyName,
    this.companyShortName,
    this.companyLogo,
    this.companyAddress,
    this.companyCity,
    this.companyCountry,
    this.companyPostCode,
    this.companyLicenseExpireDate,
    this.lastUpdate,
    this.daysLeftToExpireLicense,
    this.companyInvoiceHeaderText,
    this.companyInvoiceFooterText,
    this.paymentDetails,
  });
  static final configfields = [
    'company_name',
    'company_short_name',
    'company_logo',
    'company_address',
    'company_city',
    'company_country',
    'company_post_code',
    'company_license_expireDate',
    'last_update',
    'daysLeft_to_expire_license',
    'company_invoice_header_text',
    'company_invoice_footer_text',
    'paymet_details',
  ];
  bool get hasNullValue =>
      companyName == null || companyShortName == null || companyLogo == null;

  get fieldValues => [
        companyName,
        companyShortName,
        companyLogo,
        companyAddress,
        companyCity,
        companyCountry,
        companyPostCode,
        companyLicenseExpireDate?.toIso8601String(),
        lastUpdate?.toIso8601String(),
        daysLeftToExpireLicense?.toString(),
        companyInvoiceHeaderText,
        companyInvoiceFooterText,
        paymentDetails?.toJson(),
      ];

  Config copyWith({
    String? companyName,
    String? companyShortName,
    String? companyLogo,
    String? companyAddress,
    String? companyCity,
    String? companyCountry,
    String? companyPostCode,
    DateTime? companyLicenseExpireDate,
    DateTime? lastUpdate,
    int? daysLeftToExpireLicense,
    String? companyInvoiceHeaderText,
    String? companyInvoiceFooterText,
  }) {
    return Config(
      companyName: companyName ?? this.companyName,
      companyShortName: companyShortName ?? this.companyShortName,
      companyLogo: companyLogo ?? this.companyLogo,
      companyAddress: companyAddress ?? this.companyAddress,
      companyCity: companyCity ?? this.companyCity,
      companyCountry: companyCountry ?? this.companyCountry,
      companyPostCode: companyPostCode ?? this.companyPostCode,
      companyLicenseExpireDate:
          companyLicenseExpireDate ?? this.companyLicenseExpireDate,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      daysLeftToExpireLicense:
          daysLeftToExpireLicense ?? this.daysLeftToExpireLicense,
      companyInvoiceHeaderText:
          companyInvoiceHeaderText ?? this.companyInvoiceHeaderText,
      companyInvoiceFooterText:
          companyInvoiceFooterText ?? this.companyInvoiceFooterText,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': companyName,
      'companyShortName': companyShortName,
      'companyLogo': companyLogo,
      'companyAddress': companyAddress,
      'companyCity': companyCity,
      'companyCountry': companyCountry,
      'companyPostCode': companyPostCode,
      'companyLicenseExpireDate': companyLicenseExpireDate,
      'lastUpdate': lastUpdate,
      'daysLeftToExpireLicense': daysLeftToExpireLicense,
      'companyInvoiceHeaderText': companyInvoiceHeaderText,
      'companyInvoiceFooterText': companyInvoiceFooterText,
    };
  }

  static Config fromMap(Map<String, dynamic> map) {
    return Config(
      companyName: map['company_name'] as String?,
      companyShortName: map['company_shortName'] as String?,
      companyLogo: map['company_logo'] as String?,
      companyAddress: map['company_address'] as String?,
      companyCity: map['company_city'] as String?,
      companyCountry: map['company_country'] as String?,
      companyPostCode: map['company_post_ode'] as String?,
      companyLicenseExpireDate: map['company_license_expireDate'] != null
          ? DateTime.tryParse(map['company_license_expireDate'])
          : null,
      lastUpdate: map['last_update'] != null
          ? DateTime.tryParse(map['last_update'])
          : null,
      daysLeftToExpireLicense: map['daysLeft_to_expire_license'] != null
          ? int.tryParse(map['daysLeft_to_expire_license'])
          : null,
      companyInvoiceHeaderText: map['company_invoiceheader_text'] as String?,
      companyInvoiceFooterText: map['company_invoicefooter_text'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  static Config fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Config(companyName: $companyName, companyShortName: $companyShortName, companyLogo: $companyLogo, companyAddress: $companyAddress, companyCity: $companyCity, companyCountry: $companyCountry, companyPostCode: $companyPostCode, companyLicense: $companyLicenseExpireDate,daysLeftToExpireLicense: $daysLeftToExpireLicense, companyInvoiceHeaderText: $companyInvoiceHeaderText, companyInvoiceFooterText: $companyInvoiceFooterText)';
  }
}

class ConfigPaymentDetails {
  List<String>? paymentType;
  List<String>? digitalPaymentTypes;
  ConfigPaymentDetails({
    this.paymentType,
    this.digitalPaymentTypes,
  });

  ConfigPaymentDetails copyWith({
    List<String>? paymentType,
    List<String>? digitalPaymentTypes,
  }) {
    return ConfigPaymentDetails(
      paymentType: paymentType ?? this.paymentType,
      digitalPaymentTypes: digitalPaymentTypes ?? this.digitalPaymentTypes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paymentType': paymentType,
      'digitalPaymentTypes': digitalPaymentTypes,
    };
  }

  factory ConfigPaymentDetails.fromMap(Map<String, dynamic> map) {
    return ConfigPaymentDetails(
      paymentType: map['paymentType'] != null
          ? List<String>.from((map['paymentType'] as List<String>))
          : null,
      digitalPaymentTypes: map['digitalPaymentTypes'] != null
          ? List<String>.from((map['digitalPaymentTypes'] as List<String>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());
  factory ConfigPaymentDetails.fromJson(String source) =>
      ConfigPaymentDetails.fromMap(json.decode(source) as Map<String, dynamic>);
}
