part of 'category.dart';

extension CategoryDbExt on Category {
  Future<List<Category>> getChildren(Database db) async {
    final children = (await db.query(
      'category',
      where: 'parent = ?',
      whereArgs: [id],
    ))
        .map((e) => Category.fromMap(e))
        .toList();
    return children;
  }

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
