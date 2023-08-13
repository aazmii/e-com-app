part of 'product.dart';

extension ProducExt on Product {
  get fieldValues => [
        'id',
        'subCategories',
        'products',
        'images',
        'label',
        'name',
        'description',
        'isParent',
        'itemCode',
        'createdAt',
        'createdBy',
        'updatedAt',
        'updatedBy',
      ];

  static createTable(Database db) async {
    //TODO: complete the table
    await db.execute('''
          CREATE TABLE product (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            products  JSONB, 
            label TEXT,
            children INT
          )
    ''');
  }

  Future<bool> insertInDb(Database db) async {
    //TODO: complete the table

    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO product(date, time, gap)
            VALUES
            ('$id','$name','$images')
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }
}
