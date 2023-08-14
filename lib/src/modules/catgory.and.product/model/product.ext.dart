part of 'product.dart';

extension ProductExt on Product {
  createTable(Database db) async {
    await db.execute(
        '''
          CREATE TABLE product (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name  TEXT, 
            price DECIMAL,
            discountPrice DECIMAL, 
            images TEXT[],
            description TEXT, 
            quantity INT
          )
    ''');
  }

  // Future<bool> insertInDb(Database db) async {
  //   bool isSuccess = true;
  //   try {
  //     await db.rawInsert('''
  //           INSERT INTO product(
  //             name,
  //             price,
  //             discountPrice,
  //             images,
  //             description,
  //             quantity
  //           )
  //           VALUES('$id',
  //           '$name',
  //           '$price',
  //           '$discountPrice',
  //           '$images',
  //           '$description',
  //           '$quantity'
  //           )
  //     ''');
  //   } catch (e) {
  //     isSuccess = false;
  //   }
  //   return isSuccess;
  // }
  fromMap() {}
}
