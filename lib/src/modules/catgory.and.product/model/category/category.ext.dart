part of 'category.dart';

extension CategoryDbExt on Category {
  Future<List<Category>> getChildren(Database db) async => (await db.query(
        'category',
        where: 'parent = ?',
        whereArgs: [id],
      ))
          .map((e) => Category.fromMap(e))
          .toList();

  Future<List<Product>> getProducts(Database db) async {
    final products = (await db.query(
      'product',
      where: 'category_id = ?',
      whereArgs: [id],
    ))
        .map((e) {
      return Product.fromMap(e);
    }).toList();

    return products;
  }

  createTable(Database db) async {
    await db.execute('''
          CREATE TABLE category (
              sl INTEGER PRIMARY KEY AUTOINCREMENT,
              
              id VARCHAR UNIQUE ,
              parent VARCHAR,
              position INT, 
              label TEXT, 
        
              description TEXT,
              warehouse_location	JSONB,
              outlet_location	JSONB,
              rack_location	VARCHAR,

              type TEXT, 
              tags TEXT[],
              minimum_inventory	INT,
              special_category BOOL,

              best_sale_category BOOL,
              is_enable BOOL, 
              menu BOOL, 
              live_sales BOOL, 

              root BOOL,
              home BOOL, 
              category_files TEXT[], 
              created_at TIMESTAMP,

              created_by JSONB, 
              updated_at TIMESTAMP,
              updated_by JSONB,
              shelf_life INT 
           )
          ''');
  }

  Future<bool> saveInLocalDb(Database db) async {
    bool isSuccess = true;

    try {
      await db.rawInsert('''
            INSERT INTO category(
              id, 
              parent,
              position, 
              label,

              description,
              warehouse_location,
              outlet_location,
              rack_location,

              type, 
              tags,
              minimum_inventory,
              special_category,

              best_sale_category,
              is_enable, 
              menu, 
              live_sales, 

              root,
              home, 
              category_files, 
              created_at,
                        
              created_by,
              updated_at,
              updated_by,
              shelf_life
              )
              VALUES(
              '$id',
              '$parentId',
              '$position', 
              '$label',

              '$description',
              '$warehouseLocation',
              '$outletLocation',
              '$rackLocation',
              '$type', 
              '$tags',
              '$minimumInventory',
              '$showInSpecialCategory',
 
              '$showBestSaleCategory',
              '$isEnable', 
              '$menu', 
              '$liveSales', 

              '$root',
              '$home', 
              '$categoryFiles', 
              '$createdAt',

              '$createdBy',
              '$updatedAt',
              '$updatedBy', 
              '$shelfLife'
              )''');
    } catch (e) {
      isSuccess = false;
      print(e);
    }
    return isSuccess;
  }
}
