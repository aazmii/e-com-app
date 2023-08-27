import 'package:sqflite/sqflite.dart';

import 'category/category.dart';

class MotherCategory {
  List<Category>? categories;
  MotherCategory({this.categories});

  static createTable(Database db) async {
    await db.execute('''
          CREATE TABLE mother_category (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,
              categories TEXT[]
           )
          ''');
  }
  Future<bool> saveInLocalDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO mother_category(
              categories 
            )
            VALUES(
              '$categories' 
            )''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
