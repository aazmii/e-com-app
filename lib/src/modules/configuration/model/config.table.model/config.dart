// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:pos_sq/src/app.db/app.db.dart';

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
  List<String>? paymentTypes;
  List<String>? digitalPaymentTypes;
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
    this.paymentTypes,
    this.digitalPaymentTypes,
  });

  bool get hasNullValue =>
      companyName == null || companyShortName == null || companyLogo == null;
  List<ConfigTableData> toTableDataList() => [
        ConfigTableData(keyColumn: 'companyName', valueColumn: companyName),
        ConfigTableData(
            keyColumn: 'companyShortName', valueColumn: companyShortName),
        ConfigTableData(keyColumn: 'companyLogo', valueColumn: companyLogo),
        ConfigTableData(
            keyColumn: 'companyAddress', valueColumn: companyAddress),
        ConfigTableData(keyColumn: 'companyCity', valueColumn: companyCity),
        ConfigTableData(
            keyColumn: 'companyCountry', valueColumn: companyCountry),
        ConfigTableData(
            keyColumn: 'companyPostCode', valueColumn: companyPostCode),
        ConfigTableData(
          keyColumn: 'companyLicenseExpireDate',
          valueColumn: companyLicenseExpireDate?.toIso8601String(),
        ),
        ConfigTableData(
          keyColumn: 'lastUpdate',
          valueColumn: lastUpdate?.toIso8601String(),
        ),
        ConfigTableData(
          keyColumn: 'daysLeftToExpireLicense',
          valueColumn: daysLeftToExpireLicense?.toString(),
        ),
        ConfigTableData(
          keyColumn: 'companyInvoiceHeaderText',
          valueColumn: companyInvoiceHeaderText,
        ),
        ConfigTableData(
          keyColumn: 'companyInvoiceFooterText',
          valueColumn: companyInvoiceFooterText,
        ),
        ConfigTableData(
          keyColumn: 'taxPercentage',
          valueColumn: taxPercentage.toString(),
        ),
        ConfigTableData(
          keyColumn: 'paymentTypes',
          valueColumn: jsonEncode(paymentTypes),
        ),
        ConfigTableData(
          keyColumn: 'digitalPaymentTypes',
          valueColumn: jsonEncode(digitalPaymentTypes),
        ),
      ];
  static Config fromDataList(List<ConfigTableData> list) {
    return Config(
      companyName: list[0].valueColumn,
      companyShortName: list[1].valueColumn,
      companyLogo: list[2].valueColumn,
      companyAddress: list[3].valueColumn,
      companyCity: list[4].valueColumn,
      companyCountry: list[5].valueColumn,
      companyPostCode: list[6].valueColumn,
      companyLicenseExpireDate: list[7].valueColumn != null
          ? DateTime.parse(list[7].valueColumn!)
          : null,
      lastUpdate: list[8].valueColumn != null
          ? DateTime.parse(list[8].valueColumn!)
          : null,
      daysLeftToExpireLicense:
          list[9].valueColumn != null ? int.parse(list[9].valueColumn!) : null,
      companyInvoiceHeaderText: list[10].valueColumn,
      companyInvoiceFooterText: list[11].valueColumn,
      taxPercentage: list[12].valueColumn != 'null'
          ? double.parse(list[12].valueColumn!)
          : null,
      paymentTypes: list[13].valueColumn != null
          ? List<String>.from(jsonDecode(list[13].valueColumn!))
          : null,
      digitalPaymentTypes: list[14].valueColumn != null
          ? List<String>.from(jsonDecode(list[14].valueColumn!))
          : null,
    );
  }

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
    List<String>? paymentTypes,
    List<String>? digitalPaymentTypes,
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
        paymentTypes: paymentTypes ?? this.paymentTypes,
        digitalPaymentTypes: digitalPaymentTypes ?? this.digitalPaymentTypes);
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
