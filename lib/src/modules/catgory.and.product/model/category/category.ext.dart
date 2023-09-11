part of 'category.dart';

extension CategoryDbExt on Category {
  Future<List<Category>> getChildren() async {
    if (id == null) return [];
    return (await CategoryTable().getCategoryByParentId(id!))
        .map((e) => Category.fromTableData(e))
        .toList();
  }

  // Future<List<Category>> getChildren(Database db) async {
  //   final children = (await db.query(
  //     'category',
  //     where: 'parent = ?',
  //     whereArgs: [id],
  //   ))
  //       .map((e) => Category.fromMap(e))
  //       .toList();
  //   return children;
  // }

  Future<List<Product>> getProducts() async {
    if (id == null) return [];
    final products = (await ProductTable().getProductsByCategoryId(id!))
        .map((e) => Product.fromTableData(e))
        .toList();
    return products;
  }
}
