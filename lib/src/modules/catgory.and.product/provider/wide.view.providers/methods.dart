import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';

import '../../model/category/category.dart';

List<Category> categoryList = [];
List<Product> productList = [];

Future<List<Category>> getAllNestedCategories(category) async {
  List<Category> result = [];
  Future traverse(Category current) async {
    final children = await current.getChildren();

    for (var child in children) {
      result.add(child);
      await traverse(child);
    }
  }

  await traverse(category);
  // print('returning ${result.length} items');
  return result;
}

Future<List<Product>> getAllProducts(
  db,
  List<Category> categories,
) async {
  List<Product> result = [];
  for (var v in categories) {
    final products = await v.getProducts();
    result.addAll(products);
  }
  return result;
}

bool hasCommonElements(List<dynamic> list1, List<dynamic> list2) {
  Set<dynamic> set1 = list1.toSet();
  Set<dynamic> set2 = list2.toSet();
  return set1.intersection(set2).isNotEmpty;
}
