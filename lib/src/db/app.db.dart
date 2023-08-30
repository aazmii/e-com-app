import 'package:path/path.dart';
import 'package:pos_sq/src/models/order/order.dart';
import 'package:pos_sq/src/models/payment_details/payment.detail.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/modules/usage.timeline/model/usage.timeline.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/catgory.and.product/model/category/category.dart';

class LocalDB {
  static Database? _db;

  static const _databaseName = "POS.db";
  static const _databaseVersion = 1;
  static Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    final documentsDirectory = await getDatabasesPath();
    final path = join(documentsDirectory, _databaseName);

    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
      singleInstance: true,
    );
  }

  static Future _onCreate(Database _db, int version) async {
    await _createTable(_db, 'config');
    await UsageTimeline.createTable(_db);
    await Order.createTable(_db);
    await Product.createTable(_db);
    await Category.createTable(_db);
    await PaymentDetail.createTable(_db);
    // await MotherCategory.createTable(_db);
    // await Order().createTable(_db);
  }

  static Future<Map<String, dynamic>> getLastItem(String tableName) async {
    if (_db == null) await _initDB();
    final data = await _db!
        .rawQuery('SELECT * FROM $tableName ORDER BY sl DESC LIMIT 1');
    return data.first;
  }

  static _createTable(Database _db, String tableName) async {
    await _db.execute('''
          CREATE TABLE $tableName (
            sl SMALLSERIAL PRIMARY KEY,
            col1 TEXT, 
            col2 TEXT
          )
    ''');
  }

  static Future<List<Map<String, dynamic>>> getAllData(String tableName) async {
    final _db = await database;
    return await _db.query(tableName);
  }

  Future<bool> insertData(
    String tableName, {
    required String sl,
    required String keyName,
    required String? value,
  }) async {
    final _db = await database;
    bool isSuccess = true;
    try {
      await _db.rawInsert('''
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
    final _db = await database;

    return await _db.rawQuery('''
    SELECT $column1,$column2 
    FROM $tableName 
    ''');
  }

  Future<Map<String, dynamic>?> getDataRow({
    required String tableName,
    required int id,
  }) async {
    final _db = await database;

    final data = await _db.query(tableName, where: 'id =?', whereArgs: [id]);
    if (data.isEmpty) return null;
    return data[0];
  }

  Future<String?> getCellData({
    required String tableName,
    required String keyName,
  }) async {
    final _db = await database;
    final data = await _db.query(
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
    final _db = await database;
    try {
      return _db.rawUpdate('''
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
    final _db = await database;
    return await _db.delete(
      tableName,
      where: 'id=?',
      whereArgs: [id],
    );
  }

  Future<int> deleteTableRowBySl({
    required String tableName,
    required int sl,
  }) async {
    final _db = await database;
    return await _db.delete(
      tableName,
      where: 'sl=?',
      whereArgs: [sl],
    );
  }

  Future<int> deleteTableFromDB(String tableName) async {
    final _db = await database;
    return _db.delete(tableName);
  }

  // Future<bool> insertToConfig({
  //   required String sl,
  //   required String keyName,
  //   required String? configValue,
  // }) async {
  //   bool isInserted = true;
  //   final _db = await database;
  //   await Config.insertData(
  //     _db,
  //     sl: sl,
  //     keyName: keyName,
  //     value: configValue,
  //   );

  //   return isInserted;
  // }
}
