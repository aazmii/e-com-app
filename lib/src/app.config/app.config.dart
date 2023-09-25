import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

Config appConfig(DateTime currentDatetime) {
  final licenseDate = DateTime(2023, 12, 30);
  return Config(
    companyName: 'Algorithm Generaration',
    companyShortName: 'AG',
    companyLogo: 'unit8list',
    companyAddress: 'Nonumy at sit sanctus accusam diam ',
    companyCity: 'Washington',
    companyCountry: 'US',
    companyPostCode: '2354',
    companyLicenseExpireDate: DateTime(2023, 12, 30),
    lastUpdate: DateTime(2023, 09, 04),
    daysLeftToExpireLicense: licenseDate.difference(currentDatetime).inDays,
    companyInvoiceHeaderText:
        'Gubergren nonumy dolor vero lorem voluptua kasd tempor lorem diam',
    companyInvoiceFooterText:
        'this is some text that will be displaied in footer',
    paymentTypes: [
      'Cash',
      'Card',
      'Online payment',
      'Digital payment',
    ],
    digitalPaymentTypes: [
      'Bkash',
      'Rocket',
      'Nagad',
      'Cash',
      'Upay',
    ],
    taxPercentage: 10,
  );
}
