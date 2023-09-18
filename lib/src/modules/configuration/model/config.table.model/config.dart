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
  double? taxPercentage;
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
    this.taxPercentage,
  });

  bool get hasNullValue =>
      companyName == null || companyShortName == null || companyLogo == null;

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
    double? taxPercentage,
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
      taxPercentage: taxPercentage ?? this.taxPercentage,
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
      'tax_percentage': taxPercentage,
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
      taxPercentage: map['tax_percentage'] as double?,
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
