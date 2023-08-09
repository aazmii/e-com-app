import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/api/time.api.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

final configProvider = AsyncNotifierProvider<ConfiurationProvider, Config?>(
    ConfiurationProvider.new);

class ConfiurationProvider extends AsyncNotifier<Config?> {
  late Config config;
  late DateTime currentDate;
  @override
  Future<Config?> build() async {
    currentDate = await TimeApi.getTime() ?? DateTime.now();
    config = await getConfiguaration();
    if (config.hasNullValue) {
      await insertConfiguration(_config);
      state = AsyncData(_config);
      return state.value;
    }
    await _updateLicenseDateInLocalDb();
    state = AsyncData(await getConfiguaration());
    return state.value;
  }

  _updateLicenseDateInLocalDb() async {
    if (config.companyLicenseExpireDate == null || config.lastUpdate == null) {
      return;
    }
    final lastUpdateString = await LocalDB().getCellData(
      tableName: 'config',
      keyName: 'lastUpdate',
    );

    final lastUpdate = DateTime.parse(lastUpdateString!);
    if (lastUpdate.isSameDay(currentDate)) return;

    final daysLeft = _daysLeftToExpireLicense(
      now: currentDate,
      expireDate: config.companyLicenseExpireDate!,
    );
    LocalDB().updateTableCell(
      tableName: 'config',
      value: daysLeft,
      keyName: 'daysLeftToExpireLicense',
    );
  }

  bool isLicenseExpired() {
    if (state.value == null) return false;
    if (state.value!.companyLicenseExpireDate == null) return true;
    final daysLeft = _daysLeftToExpireLicense(
      now: currentDate,
      expireDate: state.value!.companyLicenseExpireDate!,
    );
    return daysLeft >= 0;
  }

  int _daysLeftToExpireLicense({
    required DateTime now,
    required DateTime expireDate,
  }) {
    return expireDate.difference(now).inDays;
  }

  Future<Config> getConfiguaration() async {
    final configInfo = await LocalDB().getColumns(
      'config',
      column1: 'col1',
      column2: 'col2',
    );
    return _toConfigObject(configInfo);
  }

  Config _toConfigObject(List<Map<String, dynamic>> list) {
    List<String> keys = [];
    List<String> values = [];

    for (var map in list) {
      keys.add(map.values.first);
      values.add(map.values.last);
    }
    return Config.fromMap(Map.fromIterables(keys, values));
  }

  // daysLeft() async {
  //   return  state.value!.companyLicenseExpireDate!
  //       .difference(DateTime.now())
  //       .inDays;
  // }

  Future<int> deleteTable() async =>
      await LocalDB().deleteTableFromDB('config');

  Future<int> deleteTableRow() async =>
      await LocalDB().deleteTableRow(tableName: 'config', id: 1);

  Future insertConfiguration(Config config) async {
    for (int i = 0; i < Config.configfields.length; i++) {
      await LocalDB().insertData(
        'config',
        sl: '$i',
        keyName: Config.configfields[i],
        value: config.fieldValues[i],
      );
    }
  }

  Config get _config {
    final licenseDate = DateTime(2023, 09, 04);
    return Config(
      companyName: 'Algorithm Generaration',
      companyShortName: 'AG',
      companyLogo: 'unit8list',
      companyAddress: 'Nonumy at sit sanctus accusam diam ',
      companyCity: 'Washington',
      companyCountry: 'US',
      companyPostCode: '2354',
      companyLicenseExpireDate: DateTime(2023, 09, 04),
      lastUpdate: currentDate,
      daysLeftToExpireLicense: _daysLeftToExpireLicense(
        now: currentDate,
        expireDate: licenseDate,
      ),
      companyInvoiceHeaderText:
          'Gubergren nonumy dolor vero lorem voluptua kasd tempor lorem diam',
      companyInvoiceFooterText:
          'this is some text that will be displaied in footer',
    );
  }
}
