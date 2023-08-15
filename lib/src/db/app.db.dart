import 'package:path/path.dart';
import 'package:pos_sq/src/models/order.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/usage.timeline/model/usage.timeline.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/catgory.and.product/model/category/category.dart';

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
    await _createTable(db, 'config');
    await UsageTimeline.createTable(db);
    await Product().createTable(db);
    await Category().createTable(db);
    // await Order().createTable(db);
  }

  _createTable(Database db, String tableName) async {
    await db.execute('''
          CREATE TABLE $tableName (
            sl SMALLSERIAL PRIMARY KEY,
            col1 TEXT, 
            col2 TEXT
          )
    ''');
  }

  Future<List<Map<String, dynamic>>> getAllData(String tableName) async {
    final db = await database;
    return await db.query(tableName);
  }

  Future<bool> insertData(
    String tableName, {
    required String sl,
    required String keyName,
    required String? value,
  }) async {
    final db = await database;
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO $tableName(sl,col1, col2)
            VALUES
            ('$sl','$keyName','$value')
      ''');
    } catch (e) {
      isSuccess = false;
    }

    return isSuccess;
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

  Future<String?> getCellData({
    required String tableName,
    required String keyName,
  }) async {
    final db = await database;
    final data = await db.query(
      tableName,
      columns: ['col2'],
      where: 'col1 = ?',
      whereArgs: [keyName],
    );
    // if (data.isNotEmpty) return data.first[keyName] as String;
    return data.first['col2'] as String;
  }

  Future<int> updateTableCell({
    required String tableName,
    required String keyName,
    required dynamic value,
  }) async {
    final db = await database;
    try {
      return db.rawUpdate('''
        UPDATE $tableName
        SET col2 = '$value'
        WHERE col1= '$keyName';
    ''');
    } catch (e) {
      return 0;
    }
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

  // Future<bool> insertToConfig({
  //   required String sl,
  //   required String keyName,
  //   required String? configValue,
  // }) async {
  //   bool isInserted = true;
  //   final db = await database;
  //   await Config.insertData(
  //     db,
  //     sl: sl,
  //     keyName: keyName,
  //     value: configValue,
  //   );

  //   return isInserted;
  // }
}
