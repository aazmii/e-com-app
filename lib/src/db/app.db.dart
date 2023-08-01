import 'package:path/path.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';
// import 'package:pos_sq/src/constants/constants.dart';
import 'package:sqflite/sqflite.dart';

class LocalDB {
  Database? _db;
  static const _databaseName = "POS.db";
  static const _databaseVersion = 1;
  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    final documentsDirectory = await getDatabasesPath();
    final path = join(documentsDirectory, _databaseName);

    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
      singleInstance: true,
    );
  }

  Future _onCreate(Database db, int version) async {
    // await Configuration.createTable(db);
    await Config.createTable(db);
  }

  Future<List<Map<String, dynamic>>> getColumns(
    String tableName, {
    required String column1,
    required String column2,
  }) async {
    final db = await database;

    return await db.rawQuery('''
    SELECT $column1,$column2 
    FROM $tableName 
    ''');
  }

  Future<Map<String, dynamic>?> getDataRow({
    required String tableName,
    required int id,
  }) async {
    final db = await database;

    final data = await db.query(tableName, where: 'id =?', whereArgs: [id]);
    if (data.isEmpty) return null;
    return data[0];
  }

  Future<Map<String, dynamic>?> getCellData({
    required String tableName,
    required int id,
    required String columnName,
  }) async {
    final db = await database;
    final data = await db.query(
      tableName,
      columns: [columnName],
      where: 'id =?',
      whereArgs: [id],
    );
    if (data.isNotEmpty) return data.first;
    return null;
  }

  Future<int> updateTableRow({
    required String tableName,
    required int id,
    required Map<String, dynamic> value,
  }) async {
    final db = await database;
    return await db.update(
      tableName,
      value,
      where: 'id=?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTableRow({
    required String tableName,
    required int id,
  }) async {
    final db = await database;
    return await db.delete(
      tableName,
      where: 'id=?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTableFromDB(String tableName) async {
    final db = await database;
    return db.delete(tableName);
  }

  Future<bool> insertToConfig({
    required String sl,
    required String keyName,
    required String configValue,
  }) async {
    bool isInserted = true;
    final db = await database;
    await Config.insertData(
      db,
      sl: sl,
      keyName: keyName,
      value: configValue,
    );

    return isInserted;
  }
}
