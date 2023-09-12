part of 'category.dart';

extension CategoryDbExt on Category {
  Future<List<Category>> getChildren() async {
    if (id == null) return [];
    return (await CategoryTable().getCategoryByParentId(id!))
        .map((e) => Category.fromTableData(e))
        .toList();
  }

  Future<List<Product>> getProducts() async {
    if (id == null) return [];
    final products = (await ProductTable().getProductsByCategoryId(id!))
        .map((e) => Product.fromTableData(e))
        .toList();
    return products;
  }
}
