import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

final configurationProvider =
    NotifierProvider<ConfiurationProvider, void>(ConfiurationProvider.new);

class ConfiurationProvider extends Notifier<void> {
  final tableColumns = ['shop'];
  @override
  void build() {}

  Future<Config> getConfiguaration() async {
    final configInfo = await LocalDB().getColumns(
      'config',
      column1: 'col1',
      column2: 'col2',
    );
   return toConfigObject(configInfo);
  }

  Config toConfigObject(List<Map<String, dynamic>> list) {
    List<String> keys = [];
    List<String> values = [];

    for (var map in list) {
      keys.add(map.values.first);
      values.add(map.values.last);
    }

    return Config.fromMap(Map.fromIterables(keys, values));
  }

  Future getProperty(String columnName) async {
    return await LocalDB().getCellData(
      tableName: 'config',
      id: 1,
      columnName: columnName,
    );
  }

  Future<int> deleteTable() async =>
      await LocalDB().deleteTableFromDB('config');

  Future<int> deleteTableRow() async =>
      await LocalDB().deleteTableRow(tableName: 'config', id: 1);

  void onPressedInsert() async {
    _config.fieldValues;
    for (int i = 0; i < Config.configfields.length; i++) {
      await LocalDB().insertToConfig(
        sl: '$i',
        keyName: Config.configfields[i],
        configValue: _config.fieldValues[i],
      );
    }
  }

  final _config = Config(
    companyName: 'Algorithm Generaration',
    companyShortName: 'AG',
    companyLogo: 'unit8list',
    companyAddress: 'Nonumy at sit sanctus accusam diam ',
    companyCity: 'Washington',
    companyCountry: 'US',
    companyPostCode: '2354',
    companyLicense: DateTime.now().toIso8601String(),
    companyInvoiceHeaderText:
        'Gubergren nonumy dolor vero lorem voluptua kasd tempor lorem diam',
    companyInvoiceFooterText:
        'this is some text that will be displaied in footer',
  );
}
