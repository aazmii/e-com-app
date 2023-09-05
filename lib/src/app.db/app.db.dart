import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pos_sq/src/app.db/tables/category.table.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';

import 'tables/product.table.dart';

part 'app.db.g.dart';

late AppDatabase db;

@DriftDatabase(tables: [CategoryTable, OrderTable, ProductTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;

  // categories
  Future<List<CategoryTableData>> getCategories() async {
    final categories = await select(categoryTable).get();
    return categories;
  }

  Stream<List<CategoryTableData>> watchCategory() {
    final something = select(categoryTable).watch();
    return something;
  }

  Future<int> insertCategory(CategoryTableCompanion entity) async {
    return await into(categoryTable).insert(entity);
  }

  //?PRODUCT
  Future<int> insertProduct(ProductTableCompanion entity) async {
    return await into(productTable).insert(entity);
  }

  Future<List<ProductTableData>> getProducts() async {
    final products = await select(productTable).get();
    return products;
  }

  //orders
  Future<int> insetOrder(OrderTableCompanion entity) async {
    return await into(orderTable).insert(entity);
  }

  Future<List<OrderTableData>> getOrders() async {
    return await select(orderTable).get();
  }

  Stream<List<OrderTableData>> watchOrders() => select(orderTable).watch();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(p.join(dbFolder.path, 'pos.db'));
    return NativeDatabase(file);
  });
}
