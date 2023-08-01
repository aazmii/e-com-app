// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:sqflite/sqflite.dart';

class Config {
  String? companyName;
  String? companyShortName;
  String? companyLogo;
  String? companyAddress;
  String? companyCity;
  String? companyCountry;
  String? companyPostCode;
  String? companyLicense;
  String? companyInvoiceHeaderText;
  String? companyInvoiceFooterText;
  Config({
    this.companyName,
    this.companyShortName,
    this.companyLogo,
    this.companyAddress,
    this.companyCity,
    this.companyCountry,
    this.companyPostCode,
    this.companyLicense,
    this.companyInvoiceHeaderText,
    this.companyInvoiceFooterText,
  });
  static final configfields = [
    'companyName',
    'companyShortName',
    'companyLogo',
    'companyAddress',
    'companyCity',
    'companyCountry',
    'companyPostCode',
    'companyLicense',
    'companyInvoiceHeaderText',
    'companyInvoiceFooterText',
  ];

  get fieldValues => [
        companyName,
        companyShortName,
        companyLogo,
        companyAddress,
        companyCity,
        companyCountry,
        companyPostCode,
        companyLicense,
        companyInvoiceHeaderText,
        companyInvoiceFooterText,
      ];

  static Future<void> createTable(Database db) async {
    await db.execute('''
          CREATE TABLE config (
            sl SMALLSERIAL PRIMARY KEY,
            col1 TEXT, 
            col2 TEXT
          )
          ''');
  }

  static Future<bool> insertData(
    Database db, {
    required String sl,
    required String keyName,
    required String value,
  }) async {
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO config(sl,col1, col2)
            VALUES
            ('$sl','$keyName','$value')
      ''');
    } catch (e) {
      isSuccess = false;
    }

    return isSuccess;
  }

  Config copyWith({
    String? companyName,
    String? companyShortName,
    String? companyLogo,
    String? companyAddress,
    String? companyCity,
    String? companyCountry,
    String? companyPostCode,
    String? companyLicense,
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
      companyLicense: companyLicense ?? this.companyLicense,
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
      'companyLicense': companyLicense,
      'companyInvoiceHeaderText': companyInvoiceHeaderText,
      'companyInvoiceFooterText': companyInvoiceFooterText,
    };
  }

  static Config fromMap(Map<String, dynamic> map) {
    return Config(
      companyName: map['companyName'] as String?,
      companyShortName: map['companyShortName'] as String?,
      companyLogo: map['companyLogo'] as String?,
      companyAddress: map['companyAddress'] as String?,
      companyCity: map['companyCity'] as String?,
      companyCountry: map['companyCountry'] as String?,
      companyPostCode: map['companyPostCode'] as String?,
      companyLicense: map['companyLicense'] as String?,
      companyInvoiceHeaderText: map['companyInvoiceHeaderText'] as String?,
      companyInvoiceFooterText: map['companyInvoiceFooterText'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  static Config fromJson(String source) =>
      fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Config(companyName: $companyName, companyShortName: $companyShortName, companyLogo: $companyLogo, companyAddress: $companyAddress, companyCity: $companyCity, companyCountry: $companyCountry, companyPostCode: $companyPostCode, companyLicense: $companyLicense, companyInvoiceHeaderText: $companyInvoiceHeaderText, companyInvoiceFooterText: $companyInvoiceFooterText)';
  }

 
}
