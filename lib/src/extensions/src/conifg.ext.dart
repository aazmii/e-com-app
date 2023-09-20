part of '../extensions.dart';

extension ConfigExt on Config {
  List<Map<String, String?>> toKeyValuePairs() {
    return [
      {'companyName': companyName},
      {'companyShortName': companyShortName},
      {'companyLogo': companyLogo},
      {'companyAddress': companyAddress},
      {'companyCity': companyCity},
      {'companyCountry': companyCountry},
      {'companyPostCode': companyPostCode},
      {'companyLicenseExpireDate': companyLicenseExpireDate?.toIso8601String()},
      {'lastUpdate': lastUpdate?.toIso8601String()},
      {'daysLeftToExpireLicense': daysLeftToExpireLicense?.toString()},
      {'companyInvoiceHeaderText': companyInvoiceHeaderText},
      {'companyInvoiceFooterText': companyInvoiceFooterText},
      {'taxPercentage': taxPercentage?.toString()},
    ];
  }

  List<ConfigTableCompanion> toTabeDataList() => toKeyValuePairs()
      .map((e) => ConfigTableCompanion(
            keyColumn: Value(e.keys.first),
            valueColumn: Value(e.values.first),
          ))
      .toList();
}
