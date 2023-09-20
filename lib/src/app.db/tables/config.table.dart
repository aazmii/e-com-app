import 'package:drift/drift.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

class ConfigTable extends Table {
  IntColumn get sl => integer().nullable().autoIncrement()();

  TextColumn get keyColumn => text().nullable()();
  TextColumn get valueColumn => text().nullable()();

static  Future insertConfig(Config config) async {
    final dataList = config.toTableDataList();
    for (var row in dataList) {
      await db.into(db.configTable).insert(row);
    }
  }

 static Future<Config?> getConfig() async {
    final fieldData = await db.select(db.configTable).get();
    if (fieldData.isEmpty) return null;
    return Config.fromDataList(await db.select(db.configTable).get());
  }

 static Future<bool> updateValue({required String fieldName, dynamic value}) async {
    return (await (db.update(db.configTable)
              ..where((tbl) => tbl.keyColumn.equals(fieldName)))
            .write(ConfigTableCompanion(valueColumn: Value(value)))) ==
        1;
  }
}
