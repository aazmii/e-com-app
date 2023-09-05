// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.db.dart';

// ignore_for_file: type=lint
class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slMeta = const VerificationMeta('sl');
  @override
  late final GeneratedColumn<int> sl = GeneratedColumn<int>(
      'sl', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _parentIdMeta =
      const VerificationMeta('parentId');
  @override
  late final GeneratedColumn<String> parentId = GeneratedColumn<String>(
      'parent_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _childrenMeta =
      const VerificationMeta('children');
  @override
  late final GeneratedColumn<String> children = GeneratedColumn<String>(
      'children', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _productsMeta =
      const VerificationMeta('products');
  @override
  late final GeneratedColumn<String> products = GeneratedColumn<String>(
      'products', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rackLocationMeta =
      const VerificationMeta('rackLocation');
  @override
  late final GeneratedColumn<String> rackLocation = GeneratedColumn<String>(
      'rack_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _shelfLifeMeta =
      const VerificationMeta('shelfLife');
  @override
  late final GeneratedColumn<int> shelfLife = GeneratedColumn<int>(
      'shelf_life', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minimumInventoryMeta =
      const VerificationMeta('minimumInventory');
  @override
  late final GeneratedColumn<int> minimumInventory = GeneratedColumn<int>(
      'minimum_inventory', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _isEnableMeta =
      const VerificationMeta('isEnable');
  @override
  late final GeneratedColumn<bool> isEnable = GeneratedColumn<bool>(
      'is_enable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_enable" IN (0, 1))'));
  static const VerificationMeta _menuMeta = const VerificationMeta('menu');
  @override
  late final GeneratedColumn<bool> menu = GeneratedColumn<bool>(
      'menu', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("menu" IN (0, 1))'));
  static const VerificationMeta _liveSalesMeta =
      const VerificationMeta('liveSales');
  @override
  late final GeneratedColumn<bool> liveSales = GeneratedColumn<bool>(
      'live_sales', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("live_sales" IN (0, 1))'));
  static const VerificationMeta _rootMeta = const VerificationMeta('root');
  @override
  late final GeneratedColumn<bool> root = GeneratedColumn<bool>(
      'root', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("root" IN (0, 1))'));
  static const VerificationMeta _homeMeta = const VerificationMeta('home');
  @override
  late final GeneratedColumn<bool> home = GeneratedColumn<bool>(
      'home', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("home" IN (0, 1))'));
  static const VerificationMeta _showInSpecialCategoryMeta =
      const VerificationMeta('showInSpecialCategory');
  @override
  late final GeneratedColumn<bool> showInSpecialCategory =
      GeneratedColumn<bool>('show_in_special_category', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("show_in_special_category" IN (0, 1))'));
  static const VerificationMeta _showBestSaleCategoryMeta =
      const VerificationMeta('showBestSaleCategory');
  @override
  late final GeneratedColumn<bool> showBestSaleCategory = GeneratedColumn<bool>(
      'show_best_sale_category', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_best_sale_category" IN (0, 1))'));
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryFilesMeta =
      const VerificationMeta('categoryFiles');
  @override
  late final GeneratedColumn<String> categoryFiles = GeneratedColumn<String>(
      'category_files', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'updated_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _warehouseLocationMeta =
      const VerificationMeta('warehouseLocation');
  @override
  late final GeneratedColumn<String> warehouseLocation =
      GeneratedColumn<String>('warehouse_location', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _outletLocationMeta =
      const VerificationMeta('outletLocation');
  @override
  late final GeneratedColumn<String> outletLocation = GeneratedColumn<String>(
      'outlet_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pinnedCategoryMeta =
      const VerificationMeta('pinnedCategory');
  @override
  late final GeneratedColumn<String> pinnedCategory = GeneratedColumn<String>(
      'pinned_category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        id,
        label,
        parentId,
        description,
        children,
        products,
        type,
        rackLocation,
        position,
        shelfLife,
        minimumInventory,
        isEnable,
        menu,
        liveSales,
        root,
        home,
        showInSpecialCategory,
        showBestSaleCategory,
        tags,
        categoryFiles,
        createdAt,
        updatedAt,
        createdBy,
        updatedBy,
        warehouseLocation,
        outletLocation,
        pinnedCategory
      ];
  @override
  String get aliasedName => _alias ?? 'category_table';
  @override
  String get actualTableName => 'category_table';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sl')) {
      context.handle(_slMeta, sl.isAcceptableOrUnknown(data['sl']!, _slMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('children')) {
      context.handle(_childrenMeta,
          children.isAcceptableOrUnknown(data['children']!, _childrenMeta));
    }
    if (data.containsKey('products')) {
      context.handle(_productsMeta,
          products.isAcceptableOrUnknown(data['products']!, _productsMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('rack_location')) {
      context.handle(
          _rackLocationMeta,
          rackLocation.isAcceptableOrUnknown(
              data['rack_location']!, _rackLocationMeta));
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('shelf_life')) {
      context.handle(_shelfLifeMeta,
          shelfLife.isAcceptableOrUnknown(data['shelf_life']!, _shelfLifeMeta));
    }
    if (data.containsKey('minimum_inventory')) {
      context.handle(
          _minimumInventoryMeta,
          minimumInventory.isAcceptableOrUnknown(
              data['minimum_inventory']!, _minimumInventoryMeta));
    }
    if (data.containsKey('is_enable')) {
      context.handle(_isEnableMeta,
          isEnable.isAcceptableOrUnknown(data['is_enable']!, _isEnableMeta));
    }
    if (data.containsKey('menu')) {
      context.handle(
          _menuMeta, menu.isAcceptableOrUnknown(data['menu']!, _menuMeta));
    }
    if (data.containsKey('live_sales')) {
      context.handle(_liveSalesMeta,
          liveSales.isAcceptableOrUnknown(data['live_sales']!, _liveSalesMeta));
    }
    if (data.containsKey('root')) {
      context.handle(
          _rootMeta, root.isAcceptableOrUnknown(data['root']!, _rootMeta));
    }
    if (data.containsKey('home')) {
      context.handle(
          _homeMeta, home.isAcceptableOrUnknown(data['home']!, _homeMeta));
    }
    if (data.containsKey('show_in_special_category')) {
      context.handle(
          _showInSpecialCategoryMeta,
          showInSpecialCategory.isAcceptableOrUnknown(
              data['show_in_special_category']!, _showInSpecialCategoryMeta));
    }
    if (data.containsKey('show_best_sale_category')) {
      context.handle(
          _showBestSaleCategoryMeta,
          showBestSaleCategory.isAcceptableOrUnknown(
              data['show_best_sale_category']!, _showBestSaleCategoryMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    if (data.containsKey('category_files')) {
      context.handle(
          _categoryFilesMeta,
          categoryFiles.isAcceptableOrUnknown(
              data['category_files']!, _categoryFilesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('updated_by')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['updated_by']!, _updatedByMeta));
    }
    if (data.containsKey('warehouse_location')) {
      context.handle(
          _warehouseLocationMeta,
          warehouseLocation.isAcceptableOrUnknown(
              data['warehouse_location']!, _warehouseLocationMeta));
    }
    if (data.containsKey('outlet_location')) {
      context.handle(
          _outletLocationMeta,
          outletLocation.isAcceptableOrUnknown(
              data['outlet_location']!, _outletLocationMeta));
    }
    if (data.containsKey('pinned_category')) {
      context.handle(
          _pinnedCategoryMeta,
          pinnedCategory.isAcceptableOrUnknown(
              data['pinned_category']!, _pinnedCategoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sl};
  @override
  CategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTableData(
      sl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sl']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      parentId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent_id']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      children: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}children']),
      products: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}products']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      rackLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rack_location']),
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position']),
      shelfLife: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}shelf_life']),
      minimumInventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minimum_inventory']),
      isEnable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_enable']),
      menu: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}menu']),
      liveSales: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}live_sales']),
      root: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}root']),
      home: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}home']),
      showInSpecialCategory: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}show_in_special_category']),
      showBestSaleCategory: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_best_sale_category']),
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
      categoryFiles: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_files']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_by']),
      warehouseLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}warehouse_location']),
      outletLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}outlet_location']),
      pinnedCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pinned_category']),
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryTableData extends DataClass
    implements Insertable<CategoryTableData> {
  final int? sl;
  final String? id;
  final String? label;
  final String? parentId;
  final String? description;
  final String? children;
  final String? products;
  final String? type;
  final String? rackLocation;
  final int? position;
  final int? shelfLife;
  final int? minimumInventory;
  final bool? isEnable;
  final bool? menu;
  final bool? liveSales;
  final bool? root;
  final bool? home;
  final bool? showInSpecialCategory;
  final bool? showBestSaleCategory;
  final String? tags;
  final String? categoryFiles;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? createdBy;
  final String? updatedBy;
  final String? warehouseLocation;
  final String? outletLocation;
  final String? pinnedCategory;
  const CategoryTableData(
      {this.sl,
      this.id,
      this.label,
      this.parentId,
      this.description,
      this.children,
      this.products,
      this.type,
      this.rackLocation,
      this.position,
      this.shelfLife,
      this.minimumInventory,
      this.isEnable,
      this.menu,
      this.liveSales,
      this.root,
      this.home,
      this.showInSpecialCategory,
      this.showBestSaleCategory,
      this.tags,
      this.categoryFiles,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.warehouseLocation,
      this.outletLocation,
      this.pinnedCategory});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || parentId != null) {
      map['parent_id'] = Variable<String>(parentId);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || children != null) {
      map['children'] = Variable<String>(children);
    }
    if (!nullToAbsent || products != null) {
      map['products'] = Variable<String>(products);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || rackLocation != null) {
      map['rack_location'] = Variable<String>(rackLocation);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || shelfLife != null) {
      map['shelf_life'] = Variable<int>(shelfLife);
    }
    if (!nullToAbsent || minimumInventory != null) {
      map['minimum_inventory'] = Variable<int>(minimumInventory);
    }
    if (!nullToAbsent || isEnable != null) {
      map['is_enable'] = Variable<bool>(isEnable);
    }
    if (!nullToAbsent || menu != null) {
      map['menu'] = Variable<bool>(menu);
    }
    if (!nullToAbsent || liveSales != null) {
      map['live_sales'] = Variable<bool>(liveSales);
    }
    if (!nullToAbsent || root != null) {
      map['root'] = Variable<bool>(root);
    }
    if (!nullToAbsent || home != null) {
      map['home'] = Variable<bool>(home);
    }
    if (!nullToAbsent || showInSpecialCategory != null) {
      map['show_in_special_category'] = Variable<bool>(showInSpecialCategory);
    }
    if (!nullToAbsent || showBestSaleCategory != null) {
      map['show_best_sale_category'] = Variable<bool>(showBestSaleCategory);
    }
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    if (!nullToAbsent || categoryFiles != null) {
      map['category_files'] = Variable<String>(categoryFiles);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['updated_by'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || warehouseLocation != null) {
      map['warehouse_location'] = Variable<String>(warehouseLocation);
    }
    if (!nullToAbsent || outletLocation != null) {
      map['outlet_location'] = Variable<String>(outletLocation);
    }
    if (!nullToAbsent || pinnedCategory != null) {
      map['pinned_category'] = Variable<String>(pinnedCategory);
    }
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      parentId: parentId == null && nullToAbsent
          ? const Value.absent()
          : Value(parentId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      children: children == null && nullToAbsent
          ? const Value.absent()
          : Value(children),
      products: products == null && nullToAbsent
          ? const Value.absent()
          : Value(products),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      rackLocation: rackLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(rackLocation),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      shelfLife: shelfLife == null && nullToAbsent
          ? const Value.absent()
          : Value(shelfLife),
      minimumInventory: minimumInventory == null && nullToAbsent
          ? const Value.absent()
          : Value(minimumInventory),
      isEnable: isEnable == null && nullToAbsent
          ? const Value.absent()
          : Value(isEnable),
      menu: menu == null && nullToAbsent ? const Value.absent() : Value(menu),
      liveSales: liveSales == null && nullToAbsent
          ? const Value.absent()
          : Value(liveSales),
      root: root == null && nullToAbsent ? const Value.absent() : Value(root),
      home: home == null && nullToAbsent ? const Value.absent() : Value(home),
      showInSpecialCategory: showInSpecialCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(showInSpecialCategory),
      showBestSaleCategory: showBestSaleCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(showBestSaleCategory),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      categoryFiles: categoryFiles == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryFiles),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      warehouseLocation: warehouseLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseLocation),
      outletLocation: outletLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(outletLocation),
      pinnedCategory: pinnedCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(pinnedCategory),
    );
  }

  factory CategoryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      id: serializer.fromJson<String?>(json['id']),
      label: serializer.fromJson<String?>(json['label']),
      parentId: serializer.fromJson<String?>(json['parentId']),
      description: serializer.fromJson<String?>(json['description']),
      children: serializer.fromJson<String?>(json['children']),
      products: serializer.fromJson<String?>(json['products']),
      type: serializer.fromJson<String?>(json['type']),
      rackLocation: serializer.fromJson<String?>(json['rackLocation']),
      position: serializer.fromJson<int?>(json['position']),
      shelfLife: serializer.fromJson<int?>(json['shelfLife']),
      minimumInventory: serializer.fromJson<int?>(json['minimumInventory']),
      isEnable: serializer.fromJson<bool?>(json['isEnable']),
      menu: serializer.fromJson<bool?>(json['menu']),
      liveSales: serializer.fromJson<bool?>(json['liveSales']),
      root: serializer.fromJson<bool?>(json['root']),
      home: serializer.fromJson<bool?>(json['home']),
      showInSpecialCategory:
          serializer.fromJson<bool?>(json['showInSpecialCategory']),
      showBestSaleCategory:
          serializer.fromJson<bool?>(json['showBestSaleCategory']),
      tags: serializer.fromJson<String?>(json['tags']),
      categoryFiles: serializer.fromJson<String?>(json['categoryFiles']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      warehouseLocation:
          serializer.fromJson<String?>(json['warehouseLocation']),
      outletLocation: serializer.fromJson<String?>(json['outletLocation']),
      pinnedCategory: serializer.fromJson<String?>(json['pinnedCategory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'label': serializer.toJson<String?>(label),
      'parentId': serializer.toJson<String?>(parentId),
      'description': serializer.toJson<String?>(description),
      'children': serializer.toJson<String?>(children),
      'products': serializer.toJson<String?>(products),
      'type': serializer.toJson<String?>(type),
      'rackLocation': serializer.toJson<String?>(rackLocation),
      'position': serializer.toJson<int?>(position),
      'shelfLife': serializer.toJson<int?>(shelfLife),
      'minimumInventory': serializer.toJson<int?>(minimumInventory),
      'isEnable': serializer.toJson<bool?>(isEnable),
      'menu': serializer.toJson<bool?>(menu),
      'liveSales': serializer.toJson<bool?>(liveSales),
      'root': serializer.toJson<bool?>(root),
      'home': serializer.toJson<bool?>(home),
      'showInSpecialCategory': serializer.toJson<bool?>(showInSpecialCategory),
      'showBestSaleCategory': serializer.toJson<bool?>(showBestSaleCategory),
      'tags': serializer.toJson<String?>(tags),
      'categoryFiles': serializer.toJson<String?>(categoryFiles),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'warehouseLocation': serializer.toJson<String?>(warehouseLocation),
      'outletLocation': serializer.toJson<String?>(outletLocation),
      'pinnedCategory': serializer.toJson<String?>(pinnedCategory),
    };
  }

  CategoryTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> label = const Value.absent(),
          Value<String?> parentId = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> children = const Value.absent(),
          Value<String?> products = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> rackLocation = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<int?> shelfLife = const Value.absent(),
          Value<int?> minimumInventory = const Value.absent(),
          Value<bool?> isEnable = const Value.absent(),
          Value<bool?> menu = const Value.absent(),
          Value<bool?> liveSales = const Value.absent(),
          Value<bool?> root = const Value.absent(),
          Value<bool?> home = const Value.absent(),
          Value<bool?> showInSpecialCategory = const Value.absent(),
          Value<bool?> showBestSaleCategory = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          Value<String?> categoryFiles = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<String?> warehouseLocation = const Value.absent(),
          Value<String?> outletLocation = const Value.absent(),
          Value<String?> pinnedCategory = const Value.absent()}) =>
      CategoryTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        label: label.present ? label.value : this.label,
        parentId: parentId.present ? parentId.value : this.parentId,
        description: description.present ? description.value : this.description,
        children: children.present ? children.value : this.children,
        products: products.present ? products.value : this.products,
        type: type.present ? type.value : this.type,
        rackLocation:
            rackLocation.present ? rackLocation.value : this.rackLocation,
        position: position.present ? position.value : this.position,
        shelfLife: shelfLife.present ? shelfLife.value : this.shelfLife,
        minimumInventory: minimumInventory.present
            ? minimumInventory.value
            : this.minimumInventory,
        isEnable: isEnable.present ? isEnable.value : this.isEnable,
        menu: menu.present ? menu.value : this.menu,
        liveSales: liveSales.present ? liveSales.value : this.liveSales,
        root: root.present ? root.value : this.root,
        home: home.present ? home.value : this.home,
        showInSpecialCategory: showInSpecialCategory.present
            ? showInSpecialCategory.value
            : this.showInSpecialCategory,
        showBestSaleCategory: showBestSaleCategory.present
            ? showBestSaleCategory.value
            : this.showBestSaleCategory,
        tags: tags.present ? tags.value : this.tags,
        categoryFiles:
            categoryFiles.present ? categoryFiles.value : this.categoryFiles,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        warehouseLocation: warehouseLocation.present
            ? warehouseLocation.value
            : this.warehouseLocation,
        outletLocation:
            outletLocation.present ? outletLocation.value : this.outletLocation,
        pinnedCategory:
            pinnedCategory.present ? pinnedCategory.value : this.pinnedCategory,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('description: $description, ')
          ..write('children: $children, ')
          ..write('products: $products, ')
          ..write('type: $type, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('position: $position, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory, ')
          ..write('isEnable: $isEnable, ')
          ..write('menu: $menu, ')
          ..write('liveSales: $liveSales, ')
          ..write('root: $root, ')
          ..write('home: $home, ')
          ..write('showInSpecialCategory: $showInSpecialCategory, ')
          ..write('showBestSaleCategory: $showBestSaleCategory, ')
          ..write('tags: $tags, ')
          ..write('categoryFiles: $categoryFiles, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('pinnedCategory: $pinnedCategory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        id,
        label,
        parentId,
        description,
        children,
        products,
        type,
        rackLocation,
        position,
        shelfLife,
        minimumInventory,
        isEnable,
        menu,
        liveSales,
        root,
        home,
        showInSpecialCategory,
        showBestSaleCategory,
        tags,
        categoryFiles,
        createdAt,
        updatedAt,
        createdBy,
        updatedBy,
        warehouseLocation,
        outletLocation,
        pinnedCategory
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.label == this.label &&
          other.parentId == this.parentId &&
          other.description == this.description &&
          other.children == this.children &&
          other.products == this.products &&
          other.type == this.type &&
          other.rackLocation == this.rackLocation &&
          other.position == this.position &&
          other.shelfLife == this.shelfLife &&
          other.minimumInventory == this.minimumInventory &&
          other.isEnable == this.isEnable &&
          other.menu == this.menu &&
          other.liveSales == this.liveSales &&
          other.root == this.root &&
          other.home == this.home &&
          other.showInSpecialCategory == this.showInSpecialCategory &&
          other.showBestSaleCategory == this.showBestSaleCategory &&
          other.tags == this.tags &&
          other.categoryFiles == this.categoryFiles &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.createdBy == this.createdBy &&
          other.updatedBy == this.updatedBy &&
          other.warehouseLocation == this.warehouseLocation &&
          other.outletLocation == this.outletLocation &&
          other.pinnedCategory == this.pinnedCategory);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> label;
  final Value<String?> parentId;
  final Value<String?> description;
  final Value<String?> children;
  final Value<String?> products;
  final Value<String?> type;
  final Value<String?> rackLocation;
  final Value<int?> position;
  final Value<int?> shelfLife;
  final Value<int?> minimumInventory;
  final Value<bool?> isEnable;
  final Value<bool?> menu;
  final Value<bool?> liveSales;
  final Value<bool?> root;
  final Value<bool?> home;
  final Value<bool?> showInSpecialCategory;
  final Value<bool?> showBestSaleCategory;
  final Value<String?> tags;
  final Value<String?> categoryFiles;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String?> createdBy;
  final Value<String?> updatedBy;
  final Value<String?> warehouseLocation;
  final Value<String?> outletLocation;
  final Value<String?> pinnedCategory;
  const CategoryTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.parentId = const Value.absent(),
    this.description = const Value.absent(),
    this.children = const Value.absent(),
    this.products = const Value.absent(),
    this.type = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.position = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.menu = const Value.absent(),
    this.liveSales = const Value.absent(),
    this.root = const Value.absent(),
    this.home = const Value.absent(),
    this.showInSpecialCategory = const Value.absent(),
    this.showBestSaleCategory = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryFiles = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.pinnedCategory = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.parentId = const Value.absent(),
    this.description = const Value.absent(),
    this.children = const Value.absent(),
    this.products = const Value.absent(),
    this.type = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.position = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.menu = const Value.absent(),
    this.liveSales = const Value.absent(),
    this.root = const Value.absent(),
    this.home = const Value.absent(),
    this.showInSpecialCategory = const Value.absent(),
    this.showBestSaleCategory = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryFiles = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.pinnedCategory = const Value.absent(),
  });
  static Insertable<CategoryTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? label,
    Expression<String>? parentId,
    Expression<String>? description,
    Expression<String>? children,
    Expression<String>? products,
    Expression<String>? type,
    Expression<String>? rackLocation,
    Expression<int>? position,
    Expression<int>? shelfLife,
    Expression<int>? minimumInventory,
    Expression<bool>? isEnable,
    Expression<bool>? menu,
    Expression<bool>? liveSales,
    Expression<bool>? root,
    Expression<bool>? home,
    Expression<bool>? showInSpecialCategory,
    Expression<bool>? showBestSaleCategory,
    Expression<String>? tags,
    Expression<String>? categoryFiles,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? createdBy,
    Expression<String>? updatedBy,
    Expression<String>? warehouseLocation,
    Expression<String>? outletLocation,
    Expression<String>? pinnedCategory,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (parentId != null) 'parent_id': parentId,
      if (description != null) 'description': description,
      if (children != null) 'children': children,
      if (products != null) 'products': products,
      if (type != null) 'type': type,
      if (rackLocation != null) 'rack_location': rackLocation,
      if (position != null) 'position': position,
      if (shelfLife != null) 'shelf_life': shelfLife,
      if (minimumInventory != null) 'minimum_inventory': minimumInventory,
      if (isEnable != null) 'is_enable': isEnable,
      if (menu != null) 'menu': menu,
      if (liveSales != null) 'live_sales': liveSales,
      if (root != null) 'root': root,
      if (home != null) 'home': home,
      if (showInSpecialCategory != null)
        'show_in_special_category': showInSpecialCategory,
      if (showBestSaleCategory != null)
        'show_best_sale_category': showBestSaleCategory,
      if (tags != null) 'tags': tags,
      if (categoryFiles != null) 'category_files': categoryFiles,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedBy != null) 'updated_by': updatedBy,
      if (warehouseLocation != null) 'warehouse_location': warehouseLocation,
      if (outletLocation != null) 'outlet_location': outletLocation,
      if (pinnedCategory != null) 'pinned_category': pinnedCategory,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? label,
      Value<String?>? parentId,
      Value<String?>? description,
      Value<String?>? children,
      Value<String?>? products,
      Value<String?>? type,
      Value<String?>? rackLocation,
      Value<int?>? position,
      Value<int?>? shelfLife,
      Value<int?>? minimumInventory,
      Value<bool?>? isEnable,
      Value<bool?>? menu,
      Value<bool?>? liveSales,
      Value<bool?>? root,
      Value<bool?>? home,
      Value<bool?>? showInSpecialCategory,
      Value<bool?>? showBestSaleCategory,
      Value<String?>? tags,
      Value<String?>? categoryFiles,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<String?>? createdBy,
      Value<String?>? updatedBy,
      Value<String?>? warehouseLocation,
      Value<String?>? outletLocation,
      Value<String?>? pinnedCategory}) {
    return CategoryTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      label: label ?? this.label,
      parentId: parentId ?? this.parentId,
      description: description ?? this.description,
      children: children ?? this.children,
      products: products ?? this.products,
      type: type ?? this.type,
      rackLocation: rackLocation ?? this.rackLocation,
      position: position ?? this.position,
      shelfLife: shelfLife ?? this.shelfLife,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      isEnable: isEnable ?? this.isEnable,
      menu: menu ?? this.menu,
      liveSales: liveSales ?? this.liveSales,
      root: root ?? this.root,
      home: home ?? this.home,
      showInSpecialCategory:
          showInSpecialCategory ?? this.showInSpecialCategory,
      showBestSaleCategory: showBestSaleCategory ?? this.showBestSaleCategory,
      tags: tags ?? this.tags,
      categoryFiles: categoryFiles ?? this.categoryFiles,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      pinnedCategory: pinnedCategory ?? this.pinnedCategory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sl.present) {
      map['sl'] = Variable<int>(sl.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (children.present) {
      map['children'] = Variable<String>(children.value);
    }
    if (products.present) {
      map['products'] = Variable<String>(products.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rackLocation.present) {
      map['rack_location'] = Variable<String>(rackLocation.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (shelfLife.present) {
      map['shelf_life'] = Variable<int>(shelfLife.value);
    }
    if (minimumInventory.present) {
      map['minimum_inventory'] = Variable<int>(minimumInventory.value);
    }
    if (isEnable.present) {
      map['is_enable'] = Variable<bool>(isEnable.value);
    }
    if (menu.present) {
      map['menu'] = Variable<bool>(menu.value);
    }
    if (liveSales.present) {
      map['live_sales'] = Variable<bool>(liveSales.value);
    }
    if (root.present) {
      map['root'] = Variable<bool>(root.value);
    }
    if (home.present) {
      map['home'] = Variable<bool>(home.value);
    }
    if (showInSpecialCategory.present) {
      map['show_in_special_category'] =
          Variable<bool>(showInSpecialCategory.value);
    }
    if (showBestSaleCategory.present) {
      map['show_best_sale_category'] =
          Variable<bool>(showBestSaleCategory.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (categoryFiles.present) {
      map['category_files'] = Variable<String>(categoryFiles.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (updatedBy.present) {
      map['updated_by'] = Variable<String>(updatedBy.value);
    }
    if (warehouseLocation.present) {
      map['warehouse_location'] = Variable<String>(warehouseLocation.value);
    }
    if (outletLocation.present) {
      map['outlet_location'] = Variable<String>(outletLocation.value);
    }
    if (pinnedCategory.present) {
      map['pinned_category'] = Variable<String>(pinnedCategory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('description: $description, ')
          ..write('children: $children, ')
          ..write('products: $products, ')
          ..write('type: $type, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('position: $position, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory, ')
          ..write('isEnable: $isEnable, ')
          ..write('menu: $menu, ')
          ..write('liveSales: $liveSales, ')
          ..write('root: $root, ')
          ..write('home: $home, ')
          ..write('showInSpecialCategory: $showInSpecialCategory, ')
          ..write('showBestSaleCategory: $showBestSaleCategory, ')
          ..write('tags: $tags, ')
          ..write('categoryFiles: $categoryFiles, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('pinnedCategory: $pinnedCategory')
          ..write(')'))
        .toString();
  }
}

class $OrderTableTable extends OrderTable
    with TableInfo<$OrderTableTable, OrderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slMeta = const VerificationMeta('sl');
  @override
  late final GeneratedColumn<int> sl = GeneratedColumn<int>(
      'sl', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _customerPhoneMeta =
      const VerificationMeta('customerPhone');
  @override
  late final GeneratedColumn<String> customerPhone = GeneratedColumn<String>(
      'customer_phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _loyalityCardMeta =
      const VerificationMeta('loyalityCard');
  @override
  late final GeneratedColumn<String> loyalityCard = GeneratedColumn<String>(
      'loyality_card', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _itemsMeta = const VerificationMeta('items');
  @override
  late final GeneratedColumn<String> items = GeneratedColumn<String>(
      'items', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subTotalMeta =
      const VerificationMeta('subTotal');
  @override
  late final GeneratedColumn<double> subTotal = GeneratedColumn<double>(
      'sub_total', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _grossTotalMeta =
      const VerificationMeta('grossTotal');
  @override
  late final GeneratedColumn<double> grossTotal = GeneratedColumn<double>(
      'gross_total', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedColumn<double> discountAmount = GeneratedColumn<double>(
      'discount_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _discountTypeMeta =
      const VerificationMeta('discountType');
  @override
  late final GeneratedColumn<String> discountType = GeneratedColumn<String>(
      'discount_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _vatorgstMeta =
      const VerificationMeta('vatorgst');
  @override
  late final GeneratedColumn<double> vatorgst = GeneratedColumn<double>(
      'vatorgst', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _receivedAmountMeta =
      const VerificationMeta('receivedAmount');
  @override
  late final GeneratedColumn<double> receivedAmount = GeneratedColumn<double>(
      'received_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _netTotalMeta =
      const VerificationMeta('netTotal');
  @override
  late final GeneratedColumn<double> netTotal = GeneratedColumn<double>(
      'net_total', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _returnAmountMeta =
      const VerificationMeta('returnAmount');
  @override
  late final GeneratedColumn<double> returnAmount = GeneratedColumn<double>(
      'return_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _paymentDetailsMeta =
      const VerificationMeta('paymentDetails');
  @override
  late final GeneratedColumn<String> paymentDetails = GeneratedColumn<String>(
      'payment_details', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _posIdMeta = const VerificationMeta('posId');
  @override
  late final GeneratedColumn<String> posId = GeneratedColumn<String>(
      'pos_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _posUserIdMeta =
      const VerificationMeta('posUserId');
  @override
  late final GeneratedColumn<String> posUserId = GeneratedColumn<String>(
      'pos_user_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _orderDateTimeMeta =
      const VerificationMeta('orderDateTime');
  @override
  late final GeneratedColumn<DateTime> orderDateTime =
      GeneratedColumn<DateTime>('order_date_time', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        customerName,
        customerPhone,
        loyalityCard,
        items,
        subTotal,
        grossTotal,
        discountAmount,
        discountType,
        vatorgst,
        receivedAmount,
        netTotal,
        returnAmount,
        paymentDetails,
        posId,
        posUserId,
        orderDateTime
      ];
  @override
  String get aliasedName => _alias ?? 'order_table';
  @override
  String get actualTableName => 'order_table';
  @override
  VerificationContext validateIntegrity(Insertable<OrderTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sl')) {
      context.handle(_slMeta, sl.isAcceptableOrUnknown(data['sl']!, _slMeta));
    }
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    }
    if (data.containsKey('customer_phone')) {
      context.handle(
          _customerPhoneMeta,
          customerPhone.isAcceptableOrUnknown(
              data['customer_phone']!, _customerPhoneMeta));
    }
    if (data.containsKey('loyality_card')) {
      context.handle(
          _loyalityCardMeta,
          loyalityCard.isAcceptableOrUnknown(
              data['loyality_card']!, _loyalityCardMeta));
    }
    if (data.containsKey('items')) {
      context.handle(
          _itemsMeta, items.isAcceptableOrUnknown(data['items']!, _itemsMeta));
    }
    if (data.containsKey('sub_total')) {
      context.handle(_subTotalMeta,
          subTotal.isAcceptableOrUnknown(data['sub_total']!, _subTotalMeta));
    }
    if (data.containsKey('gross_total')) {
      context.handle(
          _grossTotalMeta,
          grossTotal.isAcceptableOrUnknown(
              data['gross_total']!, _grossTotalMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('discount_type')) {
      context.handle(
          _discountTypeMeta,
          discountType.isAcceptableOrUnknown(
              data['discount_type']!, _discountTypeMeta));
    }
    if (data.containsKey('vatorgst')) {
      context.handle(_vatorgstMeta,
          vatorgst.isAcceptableOrUnknown(data['vatorgst']!, _vatorgstMeta));
    }
    if (data.containsKey('received_amount')) {
      context.handle(
          _receivedAmountMeta,
          receivedAmount.isAcceptableOrUnknown(
              data['received_amount']!, _receivedAmountMeta));
    }
    if (data.containsKey('net_total')) {
      context.handle(_netTotalMeta,
          netTotal.isAcceptableOrUnknown(data['net_total']!, _netTotalMeta));
    }
    if (data.containsKey('return_amount')) {
      context.handle(
          _returnAmountMeta,
          returnAmount.isAcceptableOrUnknown(
              data['return_amount']!, _returnAmountMeta));
    }
    if (data.containsKey('payment_details')) {
      context.handle(
          _paymentDetailsMeta,
          paymentDetails.isAcceptableOrUnknown(
              data['payment_details']!, _paymentDetailsMeta));
    }
    if (data.containsKey('pos_id')) {
      context.handle(
          _posIdMeta, posId.isAcceptableOrUnknown(data['pos_id']!, _posIdMeta));
    }
    if (data.containsKey('pos_user_id')) {
      context.handle(
          _posUserIdMeta,
          posUserId.isAcceptableOrUnknown(
              data['pos_user_id']!, _posUserIdMeta));
    }
    if (data.containsKey('order_date_time')) {
      context.handle(
          _orderDateTimeMeta,
          orderDateTime.isAcceptableOrUnknown(
              data['order_date_time']!, _orderDateTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sl};
  @override
  OrderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderTableData(
      sl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sl'])!,
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_name']),
      customerPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_phone']),
      loyalityCard: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}loyality_card']),
      items: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}items']),
      subTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sub_total']),
      grossTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gross_total']),
      discountAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount_amount']),
      discountType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_type']),
      vatorgst: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vatorgst']),
      receivedAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}received_amount']),
      netTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}net_total']),
      returnAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}return_amount']),
      paymentDetails: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_details']),
      posId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pos_id']),
      posUserId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pos_user_id']),
      orderDateTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}order_date_time']),
    );
  }

  @override
  $OrderTableTable createAlias(String alias) {
    return $OrderTableTable(attachedDatabase, alias);
  }
}

class OrderTableData extends DataClass implements Insertable<OrderTableData> {
  final int sl;
  final String? customerName;
  final String? customerPhone;
  final String? loyalityCard;
  final String? items;
  final double? subTotal;
  final double? grossTotal;
  final double? discountAmount;
  final String? discountType;
  final double? vatorgst;
  final double? receivedAmount;
  final double? netTotal;
  final double? returnAmount;
  final String? paymentDetails;
  final String? posId;
  final String? posUserId;
  final DateTime? orderDateTime;
  const OrderTableData(
      {required this.sl,
      this.customerName,
      this.customerPhone,
      this.loyalityCard,
      this.items,
      this.subTotal,
      this.grossTotal,
      this.discountAmount,
      this.discountType,
      this.vatorgst,
      this.receivedAmount,
      this.netTotal,
      this.returnAmount,
      this.paymentDetails,
      this.posId,
      this.posUserId,
      this.orderDateTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['sl'] = Variable<int>(sl);
    if (!nullToAbsent || customerName != null) {
      map['customer_name'] = Variable<String>(customerName);
    }
    if (!nullToAbsent || customerPhone != null) {
      map['customer_phone'] = Variable<String>(customerPhone);
    }
    if (!nullToAbsent || loyalityCard != null) {
      map['loyality_card'] = Variable<String>(loyalityCard);
    }
    if (!nullToAbsent || items != null) {
      map['items'] = Variable<String>(items);
    }
    if (!nullToAbsent || subTotal != null) {
      map['sub_total'] = Variable<double>(subTotal);
    }
    if (!nullToAbsent || grossTotal != null) {
      map['gross_total'] = Variable<double>(grossTotal);
    }
    if (!nullToAbsent || discountAmount != null) {
      map['discount_amount'] = Variable<double>(discountAmount);
    }
    if (!nullToAbsent || discountType != null) {
      map['discount_type'] = Variable<String>(discountType);
    }
    if (!nullToAbsent || vatorgst != null) {
      map['vatorgst'] = Variable<double>(vatorgst);
    }
    if (!nullToAbsent || receivedAmount != null) {
      map['received_amount'] = Variable<double>(receivedAmount);
    }
    if (!nullToAbsent || netTotal != null) {
      map['net_total'] = Variable<double>(netTotal);
    }
    if (!nullToAbsent || returnAmount != null) {
      map['return_amount'] = Variable<double>(returnAmount);
    }
    if (!nullToAbsent || paymentDetails != null) {
      map['payment_details'] = Variable<String>(paymentDetails);
    }
    if (!nullToAbsent || posId != null) {
      map['pos_id'] = Variable<String>(posId);
    }
    if (!nullToAbsent || posUserId != null) {
      map['pos_user_id'] = Variable<String>(posUserId);
    }
    if (!nullToAbsent || orderDateTime != null) {
      map['order_date_time'] = Variable<DateTime>(orderDateTime);
    }
    return map;
  }

  OrderTableCompanion toCompanion(bool nullToAbsent) {
    return OrderTableCompanion(
      sl: Value(sl),
      customerName: customerName == null && nullToAbsent
          ? const Value.absent()
          : Value(customerName),
      customerPhone: customerPhone == null && nullToAbsent
          ? const Value.absent()
          : Value(customerPhone),
      loyalityCard: loyalityCard == null && nullToAbsent
          ? const Value.absent()
          : Value(loyalityCard),
      items:
          items == null && nullToAbsent ? const Value.absent() : Value(items),
      subTotal: subTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(subTotal),
      grossTotal: grossTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(grossTotal),
      discountAmount: discountAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(discountAmount),
      discountType: discountType == null && nullToAbsent
          ? const Value.absent()
          : Value(discountType),
      vatorgst: vatorgst == null && nullToAbsent
          ? const Value.absent()
          : Value(vatorgst),
      receivedAmount: receivedAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(receivedAmount),
      netTotal: netTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(netTotal),
      returnAmount: returnAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(returnAmount),
      paymentDetails: paymentDetails == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentDetails),
      posId:
          posId == null && nullToAbsent ? const Value.absent() : Value(posId),
      posUserId: posUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(posUserId),
      orderDateTime: orderDateTime == null && nullToAbsent
          ? const Value.absent()
          : Value(orderDateTime),
    );
  }

  factory OrderTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderTableData(
      sl: serializer.fromJson<int>(json['sl']),
      customerName: serializer.fromJson<String?>(json['customerName']),
      customerPhone: serializer.fromJson<String?>(json['customerPhone']),
      loyalityCard: serializer.fromJson<String?>(json['loyalityCard']),
      items: serializer.fromJson<String?>(json['items']),
      subTotal: serializer.fromJson<double?>(json['subTotal']),
      grossTotal: serializer.fromJson<double?>(json['grossTotal']),
      discountAmount: serializer.fromJson<double?>(json['discountAmount']),
      discountType: serializer.fromJson<String?>(json['discountType']),
      vatorgst: serializer.fromJson<double?>(json['vatorgst']),
      receivedAmount: serializer.fromJson<double?>(json['receivedAmount']),
      netTotal: serializer.fromJson<double?>(json['netTotal']),
      returnAmount: serializer.fromJson<double?>(json['returnAmount']),
      paymentDetails: serializer.fromJson<String?>(json['paymentDetails']),
      posId: serializer.fromJson<String?>(json['posId']),
      posUserId: serializer.fromJson<String?>(json['posUserId']),
      orderDateTime: serializer.fromJson<DateTime?>(json['orderDateTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int>(sl),
      'customerName': serializer.toJson<String?>(customerName),
      'customerPhone': serializer.toJson<String?>(customerPhone),
      'loyalityCard': serializer.toJson<String?>(loyalityCard),
      'items': serializer.toJson<String?>(items),
      'subTotal': serializer.toJson<double?>(subTotal),
      'grossTotal': serializer.toJson<double?>(grossTotal),
      'discountAmount': serializer.toJson<double?>(discountAmount),
      'discountType': serializer.toJson<String?>(discountType),
      'vatorgst': serializer.toJson<double?>(vatorgst),
      'receivedAmount': serializer.toJson<double?>(receivedAmount),
      'netTotal': serializer.toJson<double?>(netTotal),
      'returnAmount': serializer.toJson<double?>(returnAmount),
      'paymentDetails': serializer.toJson<String?>(paymentDetails),
      'posId': serializer.toJson<String?>(posId),
      'posUserId': serializer.toJson<String?>(posUserId),
      'orderDateTime': serializer.toJson<DateTime?>(orderDateTime),
    };
  }

  OrderTableData copyWith(
          {int? sl,
          Value<String?> customerName = const Value.absent(),
          Value<String?> customerPhone = const Value.absent(),
          Value<String?> loyalityCard = const Value.absent(),
          Value<String?> items = const Value.absent(),
          Value<double?> subTotal = const Value.absent(),
          Value<double?> grossTotal = const Value.absent(),
          Value<double?> discountAmount = const Value.absent(),
          Value<String?> discountType = const Value.absent(),
          Value<double?> vatorgst = const Value.absent(),
          Value<double?> receivedAmount = const Value.absent(),
          Value<double?> netTotal = const Value.absent(),
          Value<double?> returnAmount = const Value.absent(),
          Value<String?> paymentDetails = const Value.absent(),
          Value<String?> posId = const Value.absent(),
          Value<String?> posUserId = const Value.absent(),
          Value<DateTime?> orderDateTime = const Value.absent()}) =>
      OrderTableData(
        sl: sl ?? this.sl,
        customerName:
            customerName.present ? customerName.value : this.customerName,
        customerPhone:
            customerPhone.present ? customerPhone.value : this.customerPhone,
        loyalityCard:
            loyalityCard.present ? loyalityCard.value : this.loyalityCard,
        items: items.present ? items.value : this.items,
        subTotal: subTotal.present ? subTotal.value : this.subTotal,
        grossTotal: grossTotal.present ? grossTotal.value : this.grossTotal,
        discountAmount:
            discountAmount.present ? discountAmount.value : this.discountAmount,
        discountType:
            discountType.present ? discountType.value : this.discountType,
        vatorgst: vatorgst.present ? vatorgst.value : this.vatorgst,
        receivedAmount:
            receivedAmount.present ? receivedAmount.value : this.receivedAmount,
        netTotal: netTotal.present ? netTotal.value : this.netTotal,
        returnAmount:
            returnAmount.present ? returnAmount.value : this.returnAmount,
        paymentDetails:
            paymentDetails.present ? paymentDetails.value : this.paymentDetails,
        posId: posId.present ? posId.value : this.posId,
        posUserId: posUserId.present ? posUserId.value : this.posUserId,
        orderDateTime:
            orderDateTime.present ? orderDateTime.value : this.orderDateTime,
      );
  @override
  String toString() {
    return (StringBuffer('OrderTableData(')
          ..write('sl: $sl, ')
          ..write('customerName: $customerName, ')
          ..write('customerPhone: $customerPhone, ')
          ..write('loyalityCard: $loyalityCard, ')
          ..write('items: $items, ')
          ..write('subTotal: $subTotal, ')
          ..write('grossTotal: $grossTotal, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountType: $discountType, ')
          ..write('vatorgst: $vatorgst, ')
          ..write('receivedAmount: $receivedAmount, ')
          ..write('netTotal: $netTotal, ')
          ..write('returnAmount: $returnAmount, ')
          ..write('paymentDetails: $paymentDetails, ')
          ..write('posId: $posId, ')
          ..write('posUserId: $posUserId, ')
          ..write('orderDateTime: $orderDateTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      sl,
      customerName,
      customerPhone,
      loyalityCard,
      items,
      subTotal,
      grossTotal,
      discountAmount,
      discountType,
      vatorgst,
      receivedAmount,
      netTotal,
      returnAmount,
      paymentDetails,
      posId,
      posUserId,
      orderDateTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderTableData &&
          other.sl == this.sl &&
          other.customerName == this.customerName &&
          other.customerPhone == this.customerPhone &&
          other.loyalityCard == this.loyalityCard &&
          other.items == this.items &&
          other.subTotal == this.subTotal &&
          other.grossTotal == this.grossTotal &&
          other.discountAmount == this.discountAmount &&
          other.discountType == this.discountType &&
          other.vatorgst == this.vatorgst &&
          other.receivedAmount == this.receivedAmount &&
          other.netTotal == this.netTotal &&
          other.returnAmount == this.returnAmount &&
          other.paymentDetails == this.paymentDetails &&
          other.posId == this.posId &&
          other.posUserId == this.posUserId &&
          other.orderDateTime == this.orderDateTime);
}

class OrderTableCompanion extends UpdateCompanion<OrderTableData> {
  final Value<int> sl;
  final Value<String?> customerName;
  final Value<String?> customerPhone;
  final Value<String?> loyalityCard;
  final Value<String?> items;
  final Value<double?> subTotal;
  final Value<double?> grossTotal;
  final Value<double?> discountAmount;
  final Value<String?> discountType;
  final Value<double?> vatorgst;
  final Value<double?> receivedAmount;
  final Value<double?> netTotal;
  final Value<double?> returnAmount;
  final Value<String?> paymentDetails;
  final Value<String?> posId;
  final Value<String?> posUserId;
  final Value<DateTime?> orderDateTime;
  const OrderTableCompanion({
    this.sl = const Value.absent(),
    this.customerName = const Value.absent(),
    this.customerPhone = const Value.absent(),
    this.loyalityCard = const Value.absent(),
    this.items = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.grossTotal = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountType = const Value.absent(),
    this.vatorgst = const Value.absent(),
    this.receivedAmount = const Value.absent(),
    this.netTotal = const Value.absent(),
    this.returnAmount = const Value.absent(),
    this.paymentDetails = const Value.absent(),
    this.posId = const Value.absent(),
    this.posUserId = const Value.absent(),
    this.orderDateTime = const Value.absent(),
  });
  OrderTableCompanion.insert({
    this.sl = const Value.absent(),
    this.customerName = const Value.absent(),
    this.customerPhone = const Value.absent(),
    this.loyalityCard = const Value.absent(),
    this.items = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.grossTotal = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.discountType = const Value.absent(),
    this.vatorgst = const Value.absent(),
    this.receivedAmount = const Value.absent(),
    this.netTotal = const Value.absent(),
    this.returnAmount = const Value.absent(),
    this.paymentDetails = const Value.absent(),
    this.posId = const Value.absent(),
    this.posUserId = const Value.absent(),
    this.orderDateTime = const Value.absent(),
  });
  static Insertable<OrderTableData> custom({
    Expression<int>? sl,
    Expression<String>? customerName,
    Expression<String>? customerPhone,
    Expression<String>? loyalityCard,
    Expression<String>? items,
    Expression<double>? subTotal,
    Expression<double>? grossTotal,
    Expression<double>? discountAmount,
    Expression<String>? discountType,
    Expression<double>? vatorgst,
    Expression<double>? receivedAmount,
    Expression<double>? netTotal,
    Expression<double>? returnAmount,
    Expression<String>? paymentDetails,
    Expression<String>? posId,
    Expression<String>? posUserId,
    Expression<DateTime>? orderDateTime,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (customerName != null) 'customer_name': customerName,
      if (customerPhone != null) 'customer_phone': customerPhone,
      if (loyalityCard != null) 'loyality_card': loyalityCard,
      if (items != null) 'items': items,
      if (subTotal != null) 'sub_total': subTotal,
      if (grossTotal != null) 'gross_total': grossTotal,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (discountType != null) 'discount_type': discountType,
      if (vatorgst != null) 'vatorgst': vatorgst,
      if (receivedAmount != null) 'received_amount': receivedAmount,
      if (netTotal != null) 'net_total': netTotal,
      if (returnAmount != null) 'return_amount': returnAmount,
      if (paymentDetails != null) 'payment_details': paymentDetails,
      if (posId != null) 'pos_id': posId,
      if (posUserId != null) 'pos_user_id': posUserId,
      if (orderDateTime != null) 'order_date_time': orderDateTime,
    });
  }

  OrderTableCompanion copyWith(
      {Value<int>? sl,
      Value<String?>? customerName,
      Value<String?>? customerPhone,
      Value<String?>? loyalityCard,
      Value<String?>? items,
      Value<double?>? subTotal,
      Value<double?>? grossTotal,
      Value<double?>? discountAmount,
      Value<String?>? discountType,
      Value<double?>? vatorgst,
      Value<double?>? receivedAmount,
      Value<double?>? netTotal,
      Value<double?>? returnAmount,
      Value<String?>? paymentDetails,
      Value<String?>? posId,
      Value<String?>? posUserId,
      Value<DateTime?>? orderDateTime}) {
    return OrderTableCompanion(
      sl: sl ?? this.sl,
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      loyalityCard: loyalityCard ?? this.loyalityCard,
      items: items ?? this.items,
      subTotal: subTotal ?? this.subTotal,
      grossTotal: grossTotal ?? this.grossTotal,
      discountAmount: discountAmount ?? this.discountAmount,
      discountType: discountType ?? this.discountType,
      vatorgst: vatorgst ?? this.vatorgst,
      receivedAmount: receivedAmount ?? this.receivedAmount,
      netTotal: netTotal ?? this.netTotal,
      returnAmount: returnAmount ?? this.returnAmount,
      paymentDetails: paymentDetails ?? this.paymentDetails,
      posId: posId ?? this.posId,
      posUserId: posUserId ?? this.posUserId,
      orderDateTime: orderDateTime ?? this.orderDateTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sl.present) {
      map['sl'] = Variable<int>(sl.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (customerPhone.present) {
      map['customer_phone'] = Variable<String>(customerPhone.value);
    }
    if (loyalityCard.present) {
      map['loyality_card'] = Variable<String>(loyalityCard.value);
    }
    if (items.present) {
      map['items'] = Variable<String>(items.value);
    }
    if (subTotal.present) {
      map['sub_total'] = Variable<double>(subTotal.value);
    }
    if (grossTotal.present) {
      map['gross_total'] = Variable<double>(grossTotal.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (discountType.present) {
      map['discount_type'] = Variable<String>(discountType.value);
    }
    if (vatorgst.present) {
      map['vatorgst'] = Variable<double>(vatorgst.value);
    }
    if (receivedAmount.present) {
      map['received_amount'] = Variable<double>(receivedAmount.value);
    }
    if (netTotal.present) {
      map['net_total'] = Variable<double>(netTotal.value);
    }
    if (returnAmount.present) {
      map['return_amount'] = Variable<double>(returnAmount.value);
    }
    if (paymentDetails.present) {
      map['payment_details'] = Variable<String>(paymentDetails.value);
    }
    if (posId.present) {
      map['pos_id'] = Variable<String>(posId.value);
    }
    if (posUserId.present) {
      map['pos_user_id'] = Variable<String>(posUserId.value);
    }
    if (orderDateTime.present) {
      map['order_date_time'] = Variable<DateTime>(orderDateTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableCompanion(')
          ..write('sl: $sl, ')
          ..write('customerName: $customerName, ')
          ..write('customerPhone: $customerPhone, ')
          ..write('loyalityCard: $loyalityCard, ')
          ..write('items: $items, ')
          ..write('subTotal: $subTotal, ')
          ..write('grossTotal: $grossTotal, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('discountType: $discountType, ')
          ..write('vatorgst: $vatorgst, ')
          ..write('receivedAmount: $receivedAmount, ')
          ..write('netTotal: $netTotal, ')
          ..write('returnAmount: $returnAmount, ')
          ..write('paymentDetails: $paymentDetails, ')
          ..write('posId: $posId, ')
          ..write('posUserId: $posUserId, ')
          ..write('orderDateTime: $orderDateTime')
          ..write(')'))
        .toString();
  }
}

class $ProductTableTable extends ProductTable
    with TableInfo<$ProductTableTable, ProductTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slMeta = const VerificationMeta('sl');
  @override
  late final GeneratedColumn<int> sl = GeneratedColumn<int>(
      'sl', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryLabelMeta =
      const VerificationMeta('categoryLabel');
  @override
  late final GeneratedColumn<String> categoryLabel = GeneratedColumn<String>(
      'category_label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _posLabelMeta =
      const VerificationMeta('posLabel');
  @override
  late final GeneratedColumn<String> posLabel = GeneratedColumn<String>(
      'pos_label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shortDescriptionMeta =
      const VerificationMeta('shortDescription');
  @override
  late final GeneratedColumn<String> shortDescription = GeneratedColumn<String>(
      'short_description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionPriceMeta =
      const VerificationMeta('promotionPrice');
  @override
  late final GeneratedColumn<double> promotionPrice = GeneratedColumn<double>(
      'promotion_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _specialPriceMeta =
      const VerificationMeta('specialPrice');
  @override
  late final GeneratedColumn<double> specialPrice = GeneratedColumn<double>(
      'special_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _advancedPriceMeta =
      const VerificationMeta('advancedPrice');
  @override
  late final GeneratedColumn<double> advancedPrice = GeneratedColumn<double>(
      'advanced_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _enableMeta = const VerificationMeta('enable');
  @override
  late final GeneratedColumn<bool> enable = GeneratedColumn<bool>(
      'enable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("enable" IN (0, 1))'));
  static const VerificationMeta _warehouseLocationMeta =
      const VerificationMeta('warehouseLocation');
  @override
  late final GeneratedColumn<String> warehouseLocation =
      GeneratedColumn<String>('warehouse_location', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _outletLocationMeta =
      const VerificationMeta('outletLocation');
  @override
  late final GeneratedColumn<String> outletLocation = GeneratedColumn<String>(
      'outlet_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _rackLocationMeta =
      const VerificationMeta('rackLocation');
  @override
  late final GeneratedColumn<String> rackLocation = GeneratedColumn<String>(
      'rack_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<double> height = GeneratedColumn<double>(
      'height', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _manufactureCountryMeta =
      const VerificationMeta('manufactureCountry');
  @override
  late final GeneratedColumn<String> manufactureCountry =
      GeneratedColumn<String>('manufacture_country', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _manufacturedDateMeta =
      const VerificationMeta('manufacturedDate');
  @override
  late final GeneratedColumn<DateTime> manufacturedDate =
      GeneratedColumn<DateTime>('manufactured_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _expireDateMeta =
      const VerificationMeta('expireDate');
  @override
  late final GeneratedColumn<DateTime> expireDate = GeneratedColumn<DateTime>(
      'expire_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _averageRatingMeta =
      const VerificationMeta('averageRating');
  @override
  late final GeneratedColumn<double> averageRating = GeneratedColumn<double>(
      'average_rating', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalNumberOfRatingMeta =
      const VerificationMeta('totalNumberOfRating');
  @override
  late final GeneratedColumn<double> totalNumberOfRating =
      GeneratedColumn<double>('total_number_of_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average5PercentRatingMeta =
      const VerificationMeta('average5PercentRating');
  @override
  late final GeneratedColumn<double> average5PercentRating =
      GeneratedColumn<double>('average5_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average4PercentRatingMeta =
      const VerificationMeta('average4PercentRating');
  @override
  late final GeneratedColumn<double> average4PercentRating =
      GeneratedColumn<double>('average4_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average3PercentRatingMeta =
      const VerificationMeta('average3PercentRating');
  @override
  late final GeneratedColumn<double> average3PercentRating =
      GeneratedColumn<double>('average3_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average2PercentRatingMeta =
      const VerificationMeta('average2PercentRating');
  @override
  late final GeneratedColumn<double> average2PercentRating =
      GeneratedColumn<double>('average2_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average1PercentRatingMeta =
      const VerificationMeta('average1PercentRating');
  @override
  late final GeneratedColumn<double> average1PercentRating =
      GeneratedColumn<double>('average1_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
      'barcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _qrcodeMeta = const VerificationMeta('qrcode');
  @override
  late final GeneratedColumn<String> qrcode = GeneratedColumn<String>(
      'qrcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxInPercentageMeta =
      const VerificationMeta('taxInPercentage');
  @override
  late final GeneratedColumn<double> taxInPercentage = GeneratedColumn<double>(
      'tax_in_percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _vatInPercentageMeta =
      const VerificationMeta('vatInPercentage');
  @override
  late final GeneratedColumn<double> vatInPercentage = GeneratedColumn<double>(
      'vat_in_percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _typesMeta = const VerificationMeta('types');
  @override
  late final GeneratedColumn<String> types = GeneratedColumn<String>(
      'types', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _skuMeta = const VerificationMeta('sku');
  @override
  late final GeneratedColumn<String> sku = GeneratedColumn<String>(
      'sku', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inventoryMeta =
      const VerificationMeta('inventory');
  @override
  late final GeneratedColumn<int> inventory = GeneratedColumn<int>(
      'inventory', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _newFromMeta =
      const VerificationMeta('newFrom');
  @override
  late final GeneratedColumn<DateTime> newFrom = GeneratedColumn<DateTime>(
      'new_from', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _newTillMeta =
      const VerificationMeta('newTill');
  @override
  late final GeneratedColumn<DateTime> newTill = GeneratedColumn<DateTime>(
      'new_till', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _isDownloadableMeta =
      const VerificationMeta('isDownloadable');
  @override
  late final GeneratedColumn<bool> isDownloadable = GeneratedColumn<bool>(
      'is_downloadable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_downloadable" IN (0, 1))'));
  static const VerificationMeta _downloadedFileMeta =
      const VerificationMeta('downloadedFile');
  @override
  late final GeneratedColumn<BigInt> downloadedFile = GeneratedColumn<BigInt>(
      'downloaded_file', aliasedName, true,
      type: DriftSqlType.bigInt, requiredDuringInsert: false);
  static const VerificationMeta _relatedProductsMeta =
      const VerificationMeta('relatedProducts');
  @override
  late final GeneratedColumn<String> relatedProducts = GeneratedColumn<String>(
      'related_products', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _crossSellProductsMeta =
      const VerificationMeta('crossSellProducts');
  @override
  late final GeneratedColumn<String> crossSellProducts =
      GeneratedColumn<String>('cross_sell_products', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _upSellProductsMeta =
      const VerificationMeta('upSellProducts');
  @override
  late final GeneratedColumn<String> upSellProducts = GeneratedColumn<String>(
      'up_sell_products', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _filesMeta = const VerificationMeta('files');
  @override
  late final GeneratedColumn<String> files = GeneratedColumn<String>(
      'files', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'updated_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _shelfLifeMeta =
      const VerificationMeta('shelfLife');
  @override
  late final GeneratedColumn<int> shelfLife = GeneratedColumn<int>(
      'shelf_life', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minimumInventoryMeta =
      const VerificationMeta('minimumInventory');
  @override
  late final GeneratedColumn<int> minimumInventory = GeneratedColumn<int>(
      'minimum_inventory', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        productId,
        categoryId,
        position,
        label,
        categoryLabel,
        posLabel,
        description,
        shortDescription,
        price,
        promotionPrice,
        specialPrice,
        advancedPrice,
        enable,
        warehouseLocation,
        outletLocation,
        rackLocation,
        weight,
        height,
        manufactureCountry,
        manufacturedDate,
        expireDate,
        averageRating,
        totalNumberOfRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating,
        barcode,
        qrcode,
        taxInPercentage,
        vatInPercentage,
        types,
        tags,
        sku,
        inventory,
        newFrom,
        newTill,
        isDownloadable,
        downloadedFile,
        relatedProducts,
        crossSellProducts,
        upSellProducts,
        files,
        createdAt,
        createdBy,
        updatedBy,
        updatedAt,
        shelfLife,
        minimumInventory
      ];
  @override
  String get aliasedName => _alias ?? 'product_table';
  @override
  String get actualTableName => 'product_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProductTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sl')) {
      context.handle(_slMeta, sl.isAcceptableOrUnknown(data['sl']!, _slMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('category_label')) {
      context.handle(
          _categoryLabelMeta,
          categoryLabel.isAcceptableOrUnknown(
              data['category_label']!, _categoryLabelMeta));
    }
    if (data.containsKey('pos_label')) {
      context.handle(_posLabelMeta,
          posLabel.isAcceptableOrUnknown(data['pos_label']!, _posLabelMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('short_description')) {
      context.handle(
          _shortDescriptionMeta,
          shortDescription.isAcceptableOrUnknown(
              data['short_description']!, _shortDescriptionMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('promotion_price')) {
      context.handle(
          _promotionPriceMeta,
          promotionPrice.isAcceptableOrUnknown(
              data['promotion_price']!, _promotionPriceMeta));
    }
    if (data.containsKey('special_price')) {
      context.handle(
          _specialPriceMeta,
          specialPrice.isAcceptableOrUnknown(
              data['special_price']!, _specialPriceMeta));
    }
    if (data.containsKey('advanced_price')) {
      context.handle(
          _advancedPriceMeta,
          advancedPrice.isAcceptableOrUnknown(
              data['advanced_price']!, _advancedPriceMeta));
    }
    if (data.containsKey('enable')) {
      context.handle(_enableMeta,
          enable.isAcceptableOrUnknown(data['enable']!, _enableMeta));
    }
    if (data.containsKey('warehouse_location')) {
      context.handle(
          _warehouseLocationMeta,
          warehouseLocation.isAcceptableOrUnknown(
              data['warehouse_location']!, _warehouseLocationMeta));
    }
    if (data.containsKey('outlet_location')) {
      context.handle(
          _outletLocationMeta,
          outletLocation.isAcceptableOrUnknown(
              data['outlet_location']!, _outletLocationMeta));
    }
    if (data.containsKey('rack_location')) {
      context.handle(
          _rackLocationMeta,
          rackLocation.isAcceptableOrUnknown(
              data['rack_location']!, _rackLocationMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('manufacture_country')) {
      context.handle(
          _manufactureCountryMeta,
          manufactureCountry.isAcceptableOrUnknown(
              data['manufacture_country']!, _manufactureCountryMeta));
    }
    if (data.containsKey('manufactured_date')) {
      context.handle(
          _manufacturedDateMeta,
          manufacturedDate.isAcceptableOrUnknown(
              data['manufactured_date']!, _manufacturedDateMeta));
    }
    if (data.containsKey('expire_date')) {
      context.handle(
          _expireDateMeta,
          expireDate.isAcceptableOrUnknown(
              data['expire_date']!, _expireDateMeta));
    }
    if (data.containsKey('average_rating')) {
      context.handle(
          _averageRatingMeta,
          averageRating.isAcceptableOrUnknown(
              data['average_rating']!, _averageRatingMeta));
    }
    if (data.containsKey('total_number_of_rating')) {
      context.handle(
          _totalNumberOfRatingMeta,
          totalNumberOfRating.isAcceptableOrUnknown(
              data['total_number_of_rating']!, _totalNumberOfRatingMeta));
    }
    if (data.containsKey('average5_percent_rating')) {
      context.handle(
          _average5PercentRatingMeta,
          average5PercentRating.isAcceptableOrUnknown(
              data['average5_percent_rating']!, _average5PercentRatingMeta));
    }
    if (data.containsKey('average4_percent_rating')) {
      context.handle(
          _average4PercentRatingMeta,
          average4PercentRating.isAcceptableOrUnknown(
              data['average4_percent_rating']!, _average4PercentRatingMeta));
    }
    if (data.containsKey('average3_percent_rating')) {
      context.handle(
          _average3PercentRatingMeta,
          average3PercentRating.isAcceptableOrUnknown(
              data['average3_percent_rating']!, _average3PercentRatingMeta));
    }
    if (data.containsKey('average2_percent_rating')) {
      context.handle(
          _average2PercentRatingMeta,
          average2PercentRating.isAcceptableOrUnknown(
              data['average2_percent_rating']!, _average2PercentRatingMeta));
    }
    if (data.containsKey('average1_percent_rating')) {
      context.handle(
          _average1PercentRatingMeta,
          average1PercentRating.isAcceptableOrUnknown(
              data['average1_percent_rating']!, _average1PercentRatingMeta));
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    }
    if (data.containsKey('qrcode')) {
      context.handle(_qrcodeMeta,
          qrcode.isAcceptableOrUnknown(data['qrcode']!, _qrcodeMeta));
    }
    if (data.containsKey('tax_in_percentage')) {
      context.handle(
          _taxInPercentageMeta,
          taxInPercentage.isAcceptableOrUnknown(
              data['tax_in_percentage']!, _taxInPercentageMeta));
    }
    if (data.containsKey('vat_in_percentage')) {
      context.handle(
          _vatInPercentageMeta,
          vatInPercentage.isAcceptableOrUnknown(
              data['vat_in_percentage']!, _vatInPercentageMeta));
    }
    if (data.containsKey('types')) {
      context.handle(
          _typesMeta, types.isAcceptableOrUnknown(data['types']!, _typesMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    if (data.containsKey('sku')) {
      context.handle(
          _skuMeta, sku.isAcceptableOrUnknown(data['sku']!, _skuMeta));
    }
    if (data.containsKey('inventory')) {
      context.handle(_inventoryMeta,
          inventory.isAcceptableOrUnknown(data['inventory']!, _inventoryMeta));
    }
    if (data.containsKey('new_from')) {
      context.handle(_newFromMeta,
          newFrom.isAcceptableOrUnknown(data['new_from']!, _newFromMeta));
    }
    if (data.containsKey('new_till')) {
      context.handle(_newTillMeta,
          newTill.isAcceptableOrUnknown(data['new_till']!, _newTillMeta));
    }
    if (data.containsKey('is_downloadable')) {
      context.handle(
          _isDownloadableMeta,
          isDownloadable.isAcceptableOrUnknown(
              data['is_downloadable']!, _isDownloadableMeta));
    }
    if (data.containsKey('downloaded_file')) {
      context.handle(
          _downloadedFileMeta,
          downloadedFile.isAcceptableOrUnknown(
              data['downloaded_file']!, _downloadedFileMeta));
    }
    if (data.containsKey('related_products')) {
      context.handle(
          _relatedProductsMeta,
          relatedProducts.isAcceptableOrUnknown(
              data['related_products']!, _relatedProductsMeta));
    }
    if (data.containsKey('cross_sell_products')) {
      context.handle(
          _crossSellProductsMeta,
          crossSellProducts.isAcceptableOrUnknown(
              data['cross_sell_products']!, _crossSellProductsMeta));
    }
    if (data.containsKey('up_sell_products')) {
      context.handle(
          _upSellProductsMeta,
          upSellProducts.isAcceptableOrUnknown(
              data['up_sell_products']!, _upSellProductsMeta));
    }
    if (data.containsKey('files')) {
      context.handle(
          _filesMeta, files.isAcceptableOrUnknown(data['files']!, _filesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('updated_by')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['updated_by']!, _updatedByMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('shelf_life')) {
      context.handle(_shelfLifeMeta,
          shelfLife.isAcceptableOrUnknown(data['shelf_life']!, _shelfLifeMeta));
    }
    if (data.containsKey('minimum_inventory')) {
      context.handle(
          _minimumInventoryMeta,
          minimumInventory.isAcceptableOrUnknown(
              data['minimum_inventory']!, _minimumInventoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sl};
  @override
  ProductTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductTableData(
      sl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sl']),
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id']),
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position']),
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      categoryLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_label']),
      posLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pos_label']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      shortDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}short_description']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      promotionPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}promotion_price']),
      specialPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}special_price']),
      advancedPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}advanced_price']),
      enable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}enable']),
      warehouseLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}warehouse_location']),
      outletLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}outlet_location']),
      rackLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rack_location']),
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height']),
      manufactureCountry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}manufacture_country']),
      manufacturedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}manufactured_date']),
      expireDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expire_date']),
      averageRating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_rating']),
      totalNumberOfRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}total_number_of_rating']),
      average5PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average5_percent_rating']),
      average4PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average4_percent_rating']),
      average3PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average3_percent_rating']),
      average2PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average2_percent_rating']),
      average1PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average1_percent_rating']),
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}barcode']),
      qrcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}qrcode']),
      taxInPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}tax_in_percentage']),
      vatInPercentage: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}vat_in_percentage']),
      types: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}types']),
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
      sku: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sku']),
      inventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}inventory']),
      newFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}new_from']),
      newTill: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}new_till']),
      isDownloadable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_downloadable']),
      downloadedFile: attachedDatabase.typeMapping
          .read(DriftSqlType.bigInt, data['${effectivePrefix}downloaded_file']),
      relatedProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}related_products']),
      crossSellProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cross_sell_products']),
      upSellProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}up_sell_products']),
      files: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}files']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_by']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      shelfLife: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}shelf_life']),
      minimumInventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minimum_inventory']),
    );
  }

  @override
  $ProductTableTable createAlias(String alias) {
    return $ProductTableTable(attachedDatabase, alias);
  }
}

class ProductTableData extends DataClass
    implements Insertable<ProductTableData> {
  final int? sl;
  final String? productId;
  final String? categoryId;
  final int? position;
  final String? label;
  final String? categoryLabel;
  final String? posLabel;
  final String? description;
  final String? shortDescription;
  final double? price;
  final double? promotionPrice;
  final double? specialPrice;
  final double? advancedPrice;
  final bool? enable;
  final String? warehouseLocation;
  final String? outletLocation;
  final String? rackLocation;
  final double? weight;
  final double? height;
  final String? manufactureCountry;
  final DateTime? manufacturedDate;
  final DateTime? expireDate;
  final double? averageRating;
  final double? totalNumberOfRating;
  final double? average5PercentRating;
  final double? average4PercentRating;
  final double? average3PercentRating;
  final double? average2PercentRating;
  final double? average1PercentRating;
  final String? barcode;
  final String? qrcode;
  final double? taxInPercentage;
  final double? vatInPercentage;
  final String? types;
  final String? tags;
  final String? sku;
  final int? inventory;
  final DateTime? newFrom;
  final DateTime? newTill;
  final bool? isDownloadable;
  final BigInt? downloadedFile;
  final String? relatedProducts;
  final String? crossSellProducts;
  final String? upSellProducts;
  final String? files;
  final DateTime? createdAt;
  final String? createdBy;
  final String? updatedBy;
  final DateTime? updatedAt;
  final int? shelfLife;
  final int? minimumInventory;
  const ProductTableData(
      {this.sl,
      this.productId,
      this.categoryId,
      this.position,
      this.label,
      this.categoryLabel,
      this.posLabel,
      this.description,
      this.shortDescription,
      this.price,
      this.promotionPrice,
      this.specialPrice,
      this.advancedPrice,
      this.enable,
      this.warehouseLocation,
      this.outletLocation,
      this.rackLocation,
      this.weight,
      this.height,
      this.manufactureCountry,
      this.manufacturedDate,
      this.expireDate,
      this.averageRating,
      this.totalNumberOfRating,
      this.average5PercentRating,
      this.average4PercentRating,
      this.average3PercentRating,
      this.average2PercentRating,
      this.average1PercentRating,
      this.barcode,
      this.qrcode,
      this.taxInPercentage,
      this.vatInPercentage,
      this.types,
      this.tags,
      this.sku,
      this.inventory,
      this.newFrom,
      this.newTill,
      this.isDownloadable,
      this.downloadedFile,
      this.relatedProducts,
      this.crossSellProducts,
      this.upSellProducts,
      this.files,
      this.createdAt,
      this.createdBy,
      this.updatedBy,
      this.updatedAt,
      this.shelfLife,
      this.minimumInventory});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<String>(productId);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || categoryLabel != null) {
      map['category_label'] = Variable<String>(categoryLabel);
    }
    if (!nullToAbsent || posLabel != null) {
      map['pos_label'] = Variable<String>(posLabel);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || shortDescription != null) {
      map['short_description'] = Variable<String>(shortDescription);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || promotionPrice != null) {
      map['promotion_price'] = Variable<double>(promotionPrice);
    }
    if (!nullToAbsent || specialPrice != null) {
      map['special_price'] = Variable<double>(specialPrice);
    }
    if (!nullToAbsent || advancedPrice != null) {
      map['advanced_price'] = Variable<double>(advancedPrice);
    }
    if (!nullToAbsent || enable != null) {
      map['enable'] = Variable<bool>(enable);
    }
    if (!nullToAbsent || warehouseLocation != null) {
      map['warehouse_location'] = Variable<String>(warehouseLocation);
    }
    if (!nullToAbsent || outletLocation != null) {
      map['outlet_location'] = Variable<String>(outletLocation);
    }
    if (!nullToAbsent || rackLocation != null) {
      map['rack_location'] = Variable<String>(rackLocation);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<double>(height);
    }
    if (!nullToAbsent || manufactureCountry != null) {
      map['manufacture_country'] = Variable<String>(manufactureCountry);
    }
    if (!nullToAbsent || manufacturedDate != null) {
      map['manufactured_date'] = Variable<DateTime>(manufacturedDate);
    }
    if (!nullToAbsent || expireDate != null) {
      map['expire_date'] = Variable<DateTime>(expireDate);
    }
    if (!nullToAbsent || averageRating != null) {
      map['average_rating'] = Variable<double>(averageRating);
    }
    if (!nullToAbsent || totalNumberOfRating != null) {
      map['total_number_of_rating'] = Variable<double>(totalNumberOfRating);
    }
    if (!nullToAbsent || average5PercentRating != null) {
      map['average5_percent_rating'] = Variable<double>(average5PercentRating);
    }
    if (!nullToAbsent || average4PercentRating != null) {
      map['average4_percent_rating'] = Variable<double>(average4PercentRating);
    }
    if (!nullToAbsent || average3PercentRating != null) {
      map['average3_percent_rating'] = Variable<double>(average3PercentRating);
    }
    if (!nullToAbsent || average2PercentRating != null) {
      map['average2_percent_rating'] = Variable<double>(average2PercentRating);
    }
    if (!nullToAbsent || average1PercentRating != null) {
      map['average1_percent_rating'] = Variable<double>(average1PercentRating);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    if (!nullToAbsent || qrcode != null) {
      map['qrcode'] = Variable<String>(qrcode);
    }
    if (!nullToAbsent || taxInPercentage != null) {
      map['tax_in_percentage'] = Variable<double>(taxInPercentage);
    }
    if (!nullToAbsent || vatInPercentage != null) {
      map['vat_in_percentage'] = Variable<double>(vatInPercentage);
    }
    if (!nullToAbsent || types != null) {
      map['types'] = Variable<String>(types);
    }
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    if (!nullToAbsent || sku != null) {
      map['sku'] = Variable<String>(sku);
    }
    if (!nullToAbsent || inventory != null) {
      map['inventory'] = Variable<int>(inventory);
    }
    if (!nullToAbsent || newFrom != null) {
      map['new_from'] = Variable<DateTime>(newFrom);
    }
    if (!nullToAbsent || newTill != null) {
      map['new_till'] = Variable<DateTime>(newTill);
    }
    if (!nullToAbsent || isDownloadable != null) {
      map['is_downloadable'] = Variable<bool>(isDownloadable);
    }
    if (!nullToAbsent || downloadedFile != null) {
      map['downloaded_file'] = Variable<BigInt>(downloadedFile);
    }
    if (!nullToAbsent || relatedProducts != null) {
      map['related_products'] = Variable<String>(relatedProducts);
    }
    if (!nullToAbsent || crossSellProducts != null) {
      map['cross_sell_products'] = Variable<String>(crossSellProducts);
    }
    if (!nullToAbsent || upSellProducts != null) {
      map['up_sell_products'] = Variable<String>(upSellProducts);
    }
    if (!nullToAbsent || files != null) {
      map['files'] = Variable<String>(files);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['updated_by'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || shelfLife != null) {
      map['shelf_life'] = Variable<int>(shelfLife);
    }
    if (!nullToAbsent || minimumInventory != null) {
      map['minimum_inventory'] = Variable<int>(minimumInventory);
    }
    return map;
  }

  ProductTableCompanion toCompanion(bool nullToAbsent) {
    return ProductTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      categoryLabel: categoryLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryLabel),
      posLabel: posLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(posLabel),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      shortDescription: shortDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(shortDescription),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      promotionPrice: promotionPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionPrice),
      specialPrice: specialPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(specialPrice),
      advancedPrice: advancedPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(advancedPrice),
      enable:
          enable == null && nullToAbsent ? const Value.absent() : Value(enable),
      warehouseLocation: warehouseLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseLocation),
      outletLocation: outletLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(outletLocation),
      rackLocation: rackLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(rackLocation),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      manufactureCountry: manufactureCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(manufactureCountry),
      manufacturedDate: manufacturedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(manufacturedDate),
      expireDate: expireDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expireDate),
      averageRating: averageRating == null && nullToAbsent
          ? const Value.absent()
          : Value(averageRating),
      totalNumberOfRating: totalNumberOfRating == null && nullToAbsent
          ? const Value.absent()
          : Value(totalNumberOfRating),
      average5PercentRating: average5PercentRating == null && nullToAbsent
          ? const Value.absent()
          : Value(average5PercentRating),
      average4PercentRating: average4PercentRating == null && nullToAbsent
          ? const Value.absent()
          : Value(average4PercentRating),
      average3PercentRating: average3PercentRating == null && nullToAbsent
          ? const Value.absent()
          : Value(average3PercentRating),
      average2PercentRating: average2PercentRating == null && nullToAbsent
          ? const Value.absent()
          : Value(average2PercentRating),
      average1PercentRating: average1PercentRating == null && nullToAbsent
          ? const Value.absent()
          : Value(average1PercentRating),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      qrcode:
          qrcode == null && nullToAbsent ? const Value.absent() : Value(qrcode),
      taxInPercentage: taxInPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(taxInPercentage),
      vatInPercentage: vatInPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(vatInPercentage),
      types:
          types == null && nullToAbsent ? const Value.absent() : Value(types),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      sku: sku == null && nullToAbsent ? const Value.absent() : Value(sku),
      inventory: inventory == null && nullToAbsent
          ? const Value.absent()
          : Value(inventory),
      newFrom: newFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(newFrom),
      newTill: newTill == null && nullToAbsent
          ? const Value.absent()
          : Value(newTill),
      isDownloadable: isDownloadable == null && nullToAbsent
          ? const Value.absent()
          : Value(isDownloadable),
      downloadedFile: downloadedFile == null && nullToAbsent
          ? const Value.absent()
          : Value(downloadedFile),
      relatedProducts: relatedProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(relatedProducts),
      crossSellProducts: crossSellProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(crossSellProducts),
      upSellProducts: upSellProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(upSellProducts),
      files:
          files == null && nullToAbsent ? const Value.absent() : Value(files),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      shelfLife: shelfLife == null && nullToAbsent
          ? const Value.absent()
          : Value(shelfLife),
      minimumInventory: minimumInventory == null && nullToAbsent
          ? const Value.absent()
          : Value(minimumInventory),
    );
  }

  factory ProductTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      productId: serializer.fromJson<String?>(json['productId']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      position: serializer.fromJson<int?>(json['position']),
      label: serializer.fromJson<String?>(json['label']),
      categoryLabel: serializer.fromJson<String?>(json['categoryLabel']),
      posLabel: serializer.fromJson<String?>(json['posLabel']),
      description: serializer.fromJson<String?>(json['description']),
      shortDescription: serializer.fromJson<String?>(json['shortDescription']),
      price: serializer.fromJson<double?>(json['price']),
      promotionPrice: serializer.fromJson<double?>(json['promotionPrice']),
      specialPrice: serializer.fromJson<double?>(json['specialPrice']),
      advancedPrice: serializer.fromJson<double?>(json['advancedPrice']),
      enable: serializer.fromJson<bool?>(json['enable']),
      warehouseLocation:
          serializer.fromJson<String?>(json['warehouseLocation']),
      outletLocation: serializer.fromJson<String?>(json['outletLocation']),
      rackLocation: serializer.fromJson<String?>(json['rackLocation']),
      weight: serializer.fromJson<double?>(json['weight']),
      height: serializer.fromJson<double?>(json['height']),
      manufactureCountry:
          serializer.fromJson<String?>(json['manufactureCountry']),
      manufacturedDate:
          serializer.fromJson<DateTime?>(json['manufacturedDate']),
      expireDate: serializer.fromJson<DateTime?>(json['expireDate']),
      averageRating: serializer.fromJson<double?>(json['averageRating']),
      totalNumberOfRating:
          serializer.fromJson<double?>(json['totalNumberOfRating']),
      average5PercentRating:
          serializer.fromJson<double?>(json['average5PercentRating']),
      average4PercentRating:
          serializer.fromJson<double?>(json['average4PercentRating']),
      average3PercentRating:
          serializer.fromJson<double?>(json['average3PercentRating']),
      average2PercentRating:
          serializer.fromJson<double?>(json['average2PercentRating']),
      average1PercentRating:
          serializer.fromJson<double?>(json['average1PercentRating']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      qrcode: serializer.fromJson<String?>(json['qrcode']),
      taxInPercentage: serializer.fromJson<double?>(json['taxInPercentage']),
      vatInPercentage: serializer.fromJson<double?>(json['vatInPercentage']),
      types: serializer.fromJson<String?>(json['types']),
      tags: serializer.fromJson<String?>(json['tags']),
      sku: serializer.fromJson<String?>(json['sku']),
      inventory: serializer.fromJson<int?>(json['inventory']),
      newFrom: serializer.fromJson<DateTime?>(json['newFrom']),
      newTill: serializer.fromJson<DateTime?>(json['newTill']),
      isDownloadable: serializer.fromJson<bool?>(json['isDownloadable']),
      downloadedFile: serializer.fromJson<BigInt?>(json['downloadedFile']),
      relatedProducts: serializer.fromJson<String?>(json['relatedProducts']),
      crossSellProducts:
          serializer.fromJson<String?>(json['crossSellProducts']),
      upSellProducts: serializer.fromJson<String?>(json['upSellProducts']),
      files: serializer.fromJson<String?>(json['files']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      shelfLife: serializer.fromJson<int?>(json['shelfLife']),
      minimumInventory: serializer.fromJson<int?>(json['minimumInventory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'productId': serializer.toJson<String?>(productId),
      'categoryId': serializer.toJson<String?>(categoryId),
      'position': serializer.toJson<int?>(position),
      'label': serializer.toJson<String?>(label),
      'categoryLabel': serializer.toJson<String?>(categoryLabel),
      'posLabel': serializer.toJson<String?>(posLabel),
      'description': serializer.toJson<String?>(description),
      'shortDescription': serializer.toJson<String?>(shortDescription),
      'price': serializer.toJson<double?>(price),
      'promotionPrice': serializer.toJson<double?>(promotionPrice),
      'specialPrice': serializer.toJson<double?>(specialPrice),
      'advancedPrice': serializer.toJson<double?>(advancedPrice),
      'enable': serializer.toJson<bool?>(enable),
      'warehouseLocation': serializer.toJson<String?>(warehouseLocation),
      'outletLocation': serializer.toJson<String?>(outletLocation),
      'rackLocation': serializer.toJson<String?>(rackLocation),
      'weight': serializer.toJson<double?>(weight),
      'height': serializer.toJson<double?>(height),
      'manufactureCountry': serializer.toJson<String?>(manufactureCountry),
      'manufacturedDate': serializer.toJson<DateTime?>(manufacturedDate),
      'expireDate': serializer.toJson<DateTime?>(expireDate),
      'averageRating': serializer.toJson<double?>(averageRating),
      'totalNumberOfRating': serializer.toJson<double?>(totalNumberOfRating),
      'average5PercentRating':
          serializer.toJson<double?>(average5PercentRating),
      'average4PercentRating':
          serializer.toJson<double?>(average4PercentRating),
      'average3PercentRating':
          serializer.toJson<double?>(average3PercentRating),
      'average2PercentRating':
          serializer.toJson<double?>(average2PercentRating),
      'average1PercentRating':
          serializer.toJson<double?>(average1PercentRating),
      'barcode': serializer.toJson<String?>(barcode),
      'qrcode': serializer.toJson<String?>(qrcode),
      'taxInPercentage': serializer.toJson<double?>(taxInPercentage),
      'vatInPercentage': serializer.toJson<double?>(vatInPercentage),
      'types': serializer.toJson<String?>(types),
      'tags': serializer.toJson<String?>(tags),
      'sku': serializer.toJson<String?>(sku),
      'inventory': serializer.toJson<int?>(inventory),
      'newFrom': serializer.toJson<DateTime?>(newFrom),
      'newTill': serializer.toJson<DateTime?>(newTill),
      'isDownloadable': serializer.toJson<bool?>(isDownloadable),
      'downloadedFile': serializer.toJson<BigInt?>(downloadedFile),
      'relatedProducts': serializer.toJson<String?>(relatedProducts),
      'crossSellProducts': serializer.toJson<String?>(crossSellProducts),
      'upSellProducts': serializer.toJson<String?>(upSellProducts),
      'files': serializer.toJson<String?>(files),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'shelfLife': serializer.toJson<int?>(shelfLife),
      'minimumInventory': serializer.toJson<int?>(minimumInventory),
    };
  }

  ProductTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> productId = const Value.absent(),
          Value<String?> categoryId = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<String?> label = const Value.absent(),
          Value<String?> categoryLabel = const Value.absent(),
          Value<String?> posLabel = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> shortDescription = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<double?> promotionPrice = const Value.absent(),
          Value<double?> specialPrice = const Value.absent(),
          Value<double?> advancedPrice = const Value.absent(),
          Value<bool?> enable = const Value.absent(),
          Value<String?> warehouseLocation = const Value.absent(),
          Value<String?> outletLocation = const Value.absent(),
          Value<String?> rackLocation = const Value.absent(),
          Value<double?> weight = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<String?> manufactureCountry = const Value.absent(),
          Value<DateTime?> manufacturedDate = const Value.absent(),
          Value<DateTime?> expireDate = const Value.absent(),
          Value<double?> averageRating = const Value.absent(),
          Value<double?> totalNumberOfRating = const Value.absent(),
          Value<double?> average5PercentRating = const Value.absent(),
          Value<double?> average4PercentRating = const Value.absent(),
          Value<double?> average3PercentRating = const Value.absent(),
          Value<double?> average2PercentRating = const Value.absent(),
          Value<double?> average1PercentRating = const Value.absent(),
          Value<String?> barcode = const Value.absent(),
          Value<String?> qrcode = const Value.absent(),
          Value<double?> taxInPercentage = const Value.absent(),
          Value<double?> vatInPercentage = const Value.absent(),
          Value<String?> types = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          Value<String?> sku = const Value.absent(),
          Value<int?> inventory = const Value.absent(),
          Value<DateTime?> newFrom = const Value.absent(),
          Value<DateTime?> newTill = const Value.absent(),
          Value<bool?> isDownloadable = const Value.absent(),
          Value<BigInt?> downloadedFile = const Value.absent(),
          Value<String?> relatedProducts = const Value.absent(),
          Value<String?> crossSellProducts = const Value.absent(),
          Value<String?> upSellProducts = const Value.absent(),
          Value<String?> files = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<int?> shelfLife = const Value.absent(),
          Value<int?> minimumInventory = const Value.absent()}) =>
      ProductTableData(
        sl: sl.present ? sl.value : this.sl,
        productId: productId.present ? productId.value : this.productId,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        position: position.present ? position.value : this.position,
        label: label.present ? label.value : this.label,
        categoryLabel:
            categoryLabel.present ? categoryLabel.value : this.categoryLabel,
        posLabel: posLabel.present ? posLabel.value : this.posLabel,
        description: description.present ? description.value : this.description,
        shortDescription: shortDescription.present
            ? shortDescription.value
            : this.shortDescription,
        price: price.present ? price.value : this.price,
        promotionPrice:
            promotionPrice.present ? promotionPrice.value : this.promotionPrice,
        specialPrice:
            specialPrice.present ? specialPrice.value : this.specialPrice,
        advancedPrice:
            advancedPrice.present ? advancedPrice.value : this.advancedPrice,
        enable: enable.present ? enable.value : this.enable,
        warehouseLocation: warehouseLocation.present
            ? warehouseLocation.value
            : this.warehouseLocation,
        outletLocation:
            outletLocation.present ? outletLocation.value : this.outletLocation,
        rackLocation:
            rackLocation.present ? rackLocation.value : this.rackLocation,
        weight: weight.present ? weight.value : this.weight,
        height: height.present ? height.value : this.height,
        manufactureCountry: manufactureCountry.present
            ? manufactureCountry.value
            : this.manufactureCountry,
        manufacturedDate: manufacturedDate.present
            ? manufacturedDate.value
            : this.manufacturedDate,
        expireDate: expireDate.present ? expireDate.value : this.expireDate,
        averageRating:
            averageRating.present ? averageRating.value : this.averageRating,
        totalNumberOfRating: totalNumberOfRating.present
            ? totalNumberOfRating.value
            : this.totalNumberOfRating,
        average5PercentRating: average5PercentRating.present
            ? average5PercentRating.value
            : this.average5PercentRating,
        average4PercentRating: average4PercentRating.present
            ? average4PercentRating.value
            : this.average4PercentRating,
        average3PercentRating: average3PercentRating.present
            ? average3PercentRating.value
            : this.average3PercentRating,
        average2PercentRating: average2PercentRating.present
            ? average2PercentRating.value
            : this.average2PercentRating,
        average1PercentRating: average1PercentRating.present
            ? average1PercentRating.value
            : this.average1PercentRating,
        barcode: barcode.present ? barcode.value : this.barcode,
        qrcode: qrcode.present ? qrcode.value : this.qrcode,
        taxInPercentage: taxInPercentage.present
            ? taxInPercentage.value
            : this.taxInPercentage,
        vatInPercentage: vatInPercentage.present
            ? vatInPercentage.value
            : this.vatInPercentage,
        types: types.present ? types.value : this.types,
        tags: tags.present ? tags.value : this.tags,
        sku: sku.present ? sku.value : this.sku,
        inventory: inventory.present ? inventory.value : this.inventory,
        newFrom: newFrom.present ? newFrom.value : this.newFrom,
        newTill: newTill.present ? newTill.value : this.newTill,
        isDownloadable:
            isDownloadable.present ? isDownloadable.value : this.isDownloadable,
        downloadedFile:
            downloadedFile.present ? downloadedFile.value : this.downloadedFile,
        relatedProducts: relatedProducts.present
            ? relatedProducts.value
            : this.relatedProducts,
        crossSellProducts: crossSellProducts.present
            ? crossSellProducts.value
            : this.crossSellProducts,
        upSellProducts:
            upSellProducts.present ? upSellProducts.value : this.upSellProducts,
        files: files.present ? files.value : this.files,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        shelfLife: shelfLife.present ? shelfLife.value : this.shelfLife,
        minimumInventory: minimumInventory.present
            ? minimumInventory.value
            : this.minimumInventory,
      );
  @override
  String toString() {
    return (StringBuffer('ProductTableData(')
          ..write('sl: $sl, ')
          ..write('productId: $productId, ')
          ..write('categoryId: $categoryId, ')
          ..write('position: $position, ')
          ..write('label: $label, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('posLabel: $posLabel, ')
          ..write('description: $description, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('price: $price, ')
          ..write('promotionPrice: $promotionPrice, ')
          ..write('specialPrice: $specialPrice, ')
          ..write('advancedPrice: $advancedPrice, ')
          ..write('enable: $enable, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('manufactureCountry: $manufactureCountry, ')
          ..write('manufacturedDate: $manufacturedDate, ')
          ..write('expireDate: $expireDate, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalNumberOfRating: $totalNumberOfRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating, ')
          ..write('barcode: $barcode, ')
          ..write('qrcode: $qrcode, ')
          ..write('taxInPercentage: $taxInPercentage, ')
          ..write('vatInPercentage: $vatInPercentage, ')
          ..write('types: $types, ')
          ..write('tags: $tags, ')
          ..write('sku: $sku, ')
          ..write('inventory: $inventory, ')
          ..write('newFrom: $newFrom, ')
          ..write('newTill: $newTill, ')
          ..write('isDownloadable: $isDownloadable, ')
          ..write('downloadedFile: $downloadedFile, ')
          ..write('relatedProducts: $relatedProducts, ')
          ..write('crossSellProducts: $crossSellProducts, ')
          ..write('upSellProducts: $upSellProducts, ')
          ..write('files: $files, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        productId,
        categoryId,
        position,
        label,
        categoryLabel,
        posLabel,
        description,
        shortDescription,
        price,
        promotionPrice,
        specialPrice,
        advancedPrice,
        enable,
        warehouseLocation,
        outletLocation,
        rackLocation,
        weight,
        height,
        manufactureCountry,
        manufacturedDate,
        expireDate,
        averageRating,
        totalNumberOfRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating,
        barcode,
        qrcode,
        taxInPercentage,
        vatInPercentage,
        types,
        tags,
        sku,
        inventory,
        newFrom,
        newTill,
        isDownloadable,
        downloadedFile,
        relatedProducts,
        crossSellProducts,
        upSellProducts,
        files,
        createdAt,
        createdBy,
        updatedBy,
        updatedAt,
        shelfLife,
        minimumInventory
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTableData &&
          other.sl == this.sl &&
          other.productId == this.productId &&
          other.categoryId == this.categoryId &&
          other.position == this.position &&
          other.label == this.label &&
          other.categoryLabel == this.categoryLabel &&
          other.posLabel == this.posLabel &&
          other.description == this.description &&
          other.shortDescription == this.shortDescription &&
          other.price == this.price &&
          other.promotionPrice == this.promotionPrice &&
          other.specialPrice == this.specialPrice &&
          other.advancedPrice == this.advancedPrice &&
          other.enable == this.enable &&
          other.warehouseLocation == this.warehouseLocation &&
          other.outletLocation == this.outletLocation &&
          other.rackLocation == this.rackLocation &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.manufactureCountry == this.manufactureCountry &&
          other.manufacturedDate == this.manufacturedDate &&
          other.expireDate == this.expireDate &&
          other.averageRating == this.averageRating &&
          other.totalNumberOfRating == this.totalNumberOfRating &&
          other.average5PercentRating == this.average5PercentRating &&
          other.average4PercentRating == this.average4PercentRating &&
          other.average3PercentRating == this.average3PercentRating &&
          other.average2PercentRating == this.average2PercentRating &&
          other.average1PercentRating == this.average1PercentRating &&
          other.barcode == this.barcode &&
          other.qrcode == this.qrcode &&
          other.taxInPercentage == this.taxInPercentage &&
          other.vatInPercentage == this.vatInPercentage &&
          other.types == this.types &&
          other.tags == this.tags &&
          other.sku == this.sku &&
          other.inventory == this.inventory &&
          other.newFrom == this.newFrom &&
          other.newTill == this.newTill &&
          other.isDownloadable == this.isDownloadable &&
          other.downloadedFile == this.downloadedFile &&
          other.relatedProducts == this.relatedProducts &&
          other.crossSellProducts == this.crossSellProducts &&
          other.upSellProducts == this.upSellProducts &&
          other.files == this.files &&
          other.createdAt == this.createdAt &&
          other.createdBy == this.createdBy &&
          other.updatedBy == this.updatedBy &&
          other.updatedAt == this.updatedAt &&
          other.shelfLife == this.shelfLife &&
          other.minimumInventory == this.minimumInventory);
}

class ProductTableCompanion extends UpdateCompanion<ProductTableData> {
  final Value<int?> sl;
  final Value<String?> productId;
  final Value<String?> categoryId;
  final Value<int?> position;
  final Value<String?> label;
  final Value<String?> categoryLabel;
  final Value<String?> posLabel;
  final Value<String?> description;
  final Value<String?> shortDescription;
  final Value<double?> price;
  final Value<double?> promotionPrice;
  final Value<double?> specialPrice;
  final Value<double?> advancedPrice;
  final Value<bool?> enable;
  final Value<String?> warehouseLocation;
  final Value<String?> outletLocation;
  final Value<String?> rackLocation;
  final Value<double?> weight;
  final Value<double?> height;
  final Value<String?> manufactureCountry;
  final Value<DateTime?> manufacturedDate;
  final Value<DateTime?> expireDate;
  final Value<double?> averageRating;
  final Value<double?> totalNumberOfRating;
  final Value<double?> average5PercentRating;
  final Value<double?> average4PercentRating;
  final Value<double?> average3PercentRating;
  final Value<double?> average2PercentRating;
  final Value<double?> average1PercentRating;
  final Value<String?> barcode;
  final Value<String?> qrcode;
  final Value<double?> taxInPercentage;
  final Value<double?> vatInPercentage;
  final Value<String?> types;
  final Value<String?> tags;
  final Value<String?> sku;
  final Value<int?> inventory;
  final Value<DateTime?> newFrom;
  final Value<DateTime?> newTill;
  final Value<bool?> isDownloadable;
  final Value<BigInt?> downloadedFile;
  final Value<String?> relatedProducts;
  final Value<String?> crossSellProducts;
  final Value<String?> upSellProducts;
  final Value<String?> files;
  final Value<DateTime?> createdAt;
  final Value<String?> createdBy;
  final Value<String?> updatedBy;
  final Value<DateTime?> updatedAt;
  final Value<int?> shelfLife;
  final Value<int?> minimumInventory;
  const ProductTableCompanion({
    this.sl = const Value.absent(),
    this.productId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.position = const Value.absent(),
    this.label = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.posLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.price = const Value.absent(),
    this.promotionPrice = const Value.absent(),
    this.specialPrice = const Value.absent(),
    this.advancedPrice = const Value.absent(),
    this.enable = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.manufactureCountry = const Value.absent(),
    this.manufacturedDate = const Value.absent(),
    this.expireDate = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalNumberOfRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
    this.barcode = const Value.absent(),
    this.qrcode = const Value.absent(),
    this.taxInPercentage = const Value.absent(),
    this.vatInPercentage = const Value.absent(),
    this.types = const Value.absent(),
    this.tags = const Value.absent(),
    this.sku = const Value.absent(),
    this.inventory = const Value.absent(),
    this.newFrom = const Value.absent(),
    this.newTill = const Value.absent(),
    this.isDownloadable = const Value.absent(),
    this.downloadedFile = const Value.absent(),
    this.relatedProducts = const Value.absent(),
    this.crossSellProducts = const Value.absent(),
    this.upSellProducts = const Value.absent(),
    this.files = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
  });
  ProductTableCompanion.insert({
    this.sl = const Value.absent(),
    this.productId = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.position = const Value.absent(),
    this.label = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.posLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.price = const Value.absent(),
    this.promotionPrice = const Value.absent(),
    this.specialPrice = const Value.absent(),
    this.advancedPrice = const Value.absent(),
    this.enable = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.manufactureCountry = const Value.absent(),
    this.manufacturedDate = const Value.absent(),
    this.expireDate = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalNumberOfRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
    this.barcode = const Value.absent(),
    this.qrcode = const Value.absent(),
    this.taxInPercentage = const Value.absent(),
    this.vatInPercentage = const Value.absent(),
    this.types = const Value.absent(),
    this.tags = const Value.absent(),
    this.sku = const Value.absent(),
    this.inventory = const Value.absent(),
    this.newFrom = const Value.absent(),
    this.newTill = const Value.absent(),
    this.isDownloadable = const Value.absent(),
    this.downloadedFile = const Value.absent(),
    this.relatedProducts = const Value.absent(),
    this.crossSellProducts = const Value.absent(),
    this.upSellProducts = const Value.absent(),
    this.files = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
  });
  static Insertable<ProductTableData> custom({
    Expression<int>? sl,
    Expression<String>? productId,
    Expression<String>? categoryId,
    Expression<int>? position,
    Expression<String>? label,
    Expression<String>? categoryLabel,
    Expression<String>? posLabel,
    Expression<String>? description,
    Expression<String>? shortDescription,
    Expression<double>? price,
    Expression<double>? promotionPrice,
    Expression<double>? specialPrice,
    Expression<double>? advancedPrice,
    Expression<bool>? enable,
    Expression<String>? warehouseLocation,
    Expression<String>? outletLocation,
    Expression<String>? rackLocation,
    Expression<double>? weight,
    Expression<double>? height,
    Expression<String>? manufactureCountry,
    Expression<DateTime>? manufacturedDate,
    Expression<DateTime>? expireDate,
    Expression<double>? averageRating,
    Expression<double>? totalNumberOfRating,
    Expression<double>? average5PercentRating,
    Expression<double>? average4PercentRating,
    Expression<double>? average3PercentRating,
    Expression<double>? average2PercentRating,
    Expression<double>? average1PercentRating,
    Expression<String>? barcode,
    Expression<String>? qrcode,
    Expression<double>? taxInPercentage,
    Expression<double>? vatInPercentage,
    Expression<String>? types,
    Expression<String>? tags,
    Expression<String>? sku,
    Expression<int>? inventory,
    Expression<DateTime>? newFrom,
    Expression<DateTime>? newTill,
    Expression<bool>? isDownloadable,
    Expression<BigInt>? downloadedFile,
    Expression<String>? relatedProducts,
    Expression<String>? crossSellProducts,
    Expression<String>? upSellProducts,
    Expression<String>? files,
    Expression<DateTime>? createdAt,
    Expression<String>? createdBy,
    Expression<String>? updatedBy,
    Expression<DateTime>? updatedAt,
    Expression<int>? shelfLife,
    Expression<int>? minimumInventory,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (productId != null) 'product_id': productId,
      if (categoryId != null) 'category_id': categoryId,
      if (position != null) 'position': position,
      if (label != null) 'label': label,
      if (categoryLabel != null) 'category_label': categoryLabel,
      if (posLabel != null) 'pos_label': posLabel,
      if (description != null) 'description': description,
      if (shortDescription != null) 'short_description': shortDescription,
      if (price != null) 'price': price,
      if (promotionPrice != null) 'promotion_price': promotionPrice,
      if (specialPrice != null) 'special_price': specialPrice,
      if (advancedPrice != null) 'advanced_price': advancedPrice,
      if (enable != null) 'enable': enable,
      if (warehouseLocation != null) 'warehouse_location': warehouseLocation,
      if (outletLocation != null) 'outlet_location': outletLocation,
      if (rackLocation != null) 'rack_location': rackLocation,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (manufactureCountry != null) 'manufacture_country': manufactureCountry,
      if (manufacturedDate != null) 'manufactured_date': manufacturedDate,
      if (expireDate != null) 'expire_date': expireDate,
      if (averageRating != null) 'average_rating': averageRating,
      if (totalNumberOfRating != null)
        'total_number_of_rating': totalNumberOfRating,
      if (average5PercentRating != null)
        'average5_percent_rating': average5PercentRating,
      if (average4PercentRating != null)
        'average4_percent_rating': average4PercentRating,
      if (average3PercentRating != null)
        'average3_percent_rating': average3PercentRating,
      if (average2PercentRating != null)
        'average2_percent_rating': average2PercentRating,
      if (average1PercentRating != null)
        'average1_percent_rating': average1PercentRating,
      if (barcode != null) 'barcode': barcode,
      if (qrcode != null) 'qrcode': qrcode,
      if (taxInPercentage != null) 'tax_in_percentage': taxInPercentage,
      if (vatInPercentage != null) 'vat_in_percentage': vatInPercentage,
      if (types != null) 'types': types,
      if (tags != null) 'tags': tags,
      if (sku != null) 'sku': sku,
      if (inventory != null) 'inventory': inventory,
      if (newFrom != null) 'new_from': newFrom,
      if (newTill != null) 'new_till': newTill,
      if (isDownloadable != null) 'is_downloadable': isDownloadable,
      if (downloadedFile != null) 'downloaded_file': downloadedFile,
      if (relatedProducts != null) 'related_products': relatedProducts,
      if (crossSellProducts != null) 'cross_sell_products': crossSellProducts,
      if (upSellProducts != null) 'up_sell_products': upSellProducts,
      if (files != null) 'files': files,
      if (createdAt != null) 'created_at': createdAt,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedBy != null) 'updated_by': updatedBy,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (shelfLife != null) 'shelf_life': shelfLife,
      if (minimumInventory != null) 'minimum_inventory': minimumInventory,
    });
  }

  ProductTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? productId,
      Value<String?>? categoryId,
      Value<int?>? position,
      Value<String?>? label,
      Value<String?>? categoryLabel,
      Value<String?>? posLabel,
      Value<String?>? description,
      Value<String?>? shortDescription,
      Value<double?>? price,
      Value<double?>? promotionPrice,
      Value<double?>? specialPrice,
      Value<double?>? advancedPrice,
      Value<bool?>? enable,
      Value<String?>? warehouseLocation,
      Value<String?>? outletLocation,
      Value<String?>? rackLocation,
      Value<double?>? weight,
      Value<double?>? height,
      Value<String?>? manufactureCountry,
      Value<DateTime?>? manufacturedDate,
      Value<DateTime?>? expireDate,
      Value<double?>? averageRating,
      Value<double?>? totalNumberOfRating,
      Value<double?>? average5PercentRating,
      Value<double?>? average4PercentRating,
      Value<double?>? average3PercentRating,
      Value<double?>? average2PercentRating,
      Value<double?>? average1PercentRating,
      Value<String?>? barcode,
      Value<String?>? qrcode,
      Value<double?>? taxInPercentage,
      Value<double?>? vatInPercentage,
      Value<String?>? types,
      Value<String?>? tags,
      Value<String?>? sku,
      Value<int?>? inventory,
      Value<DateTime?>? newFrom,
      Value<DateTime?>? newTill,
      Value<bool?>? isDownloadable,
      Value<BigInt?>? downloadedFile,
      Value<String?>? relatedProducts,
      Value<String?>? crossSellProducts,
      Value<String?>? upSellProducts,
      Value<String?>? files,
      Value<DateTime?>? createdAt,
      Value<String?>? createdBy,
      Value<String?>? updatedBy,
      Value<DateTime?>? updatedAt,
      Value<int?>? shelfLife,
      Value<int?>? minimumInventory}) {
    return ProductTableCompanion(
      sl: sl ?? this.sl,
      productId: productId ?? this.productId,
      categoryId: categoryId ?? this.categoryId,
      position: position ?? this.position,
      label: label ?? this.label,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      posLabel: posLabel ?? this.posLabel,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      price: price ?? this.price,
      promotionPrice: promotionPrice ?? this.promotionPrice,
      specialPrice: specialPrice ?? this.specialPrice,
      advancedPrice: advancedPrice ?? this.advancedPrice,
      enable: enable ?? this.enable,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      rackLocation: rackLocation ?? this.rackLocation,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      manufacturedDate: manufacturedDate ?? this.manufacturedDate,
      expireDate: expireDate ?? this.expireDate,
      averageRating: averageRating ?? this.averageRating,
      totalNumberOfRating: totalNumberOfRating ?? this.totalNumberOfRating,
      average5PercentRating:
          average5PercentRating ?? this.average5PercentRating,
      average4PercentRating:
          average4PercentRating ?? this.average4PercentRating,
      average3PercentRating:
          average3PercentRating ?? this.average3PercentRating,
      average2PercentRating:
          average2PercentRating ?? this.average2PercentRating,
      average1PercentRating:
          average1PercentRating ?? this.average1PercentRating,
      barcode: barcode ?? this.barcode,
      qrcode: qrcode ?? this.qrcode,
      taxInPercentage: taxInPercentage ?? this.taxInPercentage,
      vatInPercentage: vatInPercentage ?? this.vatInPercentage,
      types: types ?? this.types,
      tags: tags ?? this.tags,
      sku: sku ?? this.sku,
      inventory: inventory ?? this.inventory,
      newFrom: newFrom ?? this.newFrom,
      newTill: newTill ?? this.newTill,
      isDownloadable: isDownloadable ?? this.isDownloadable,
      downloadedFile: downloadedFile ?? this.downloadedFile,
      relatedProducts: relatedProducts ?? this.relatedProducts,
      crossSellProducts: crossSellProducts ?? this.crossSellProducts,
      upSellProducts: upSellProducts ?? this.upSellProducts,
      files: files ?? this.files,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      updatedAt: updatedAt ?? this.updatedAt,
      shelfLife: shelfLife ?? this.shelfLife,
      minimumInventory: minimumInventory ?? this.minimumInventory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sl.present) {
      map['sl'] = Variable<int>(sl.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (categoryLabel.present) {
      map['category_label'] = Variable<String>(categoryLabel.value);
    }
    if (posLabel.present) {
      map['pos_label'] = Variable<String>(posLabel.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (shortDescription.present) {
      map['short_description'] = Variable<String>(shortDescription.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (promotionPrice.present) {
      map['promotion_price'] = Variable<double>(promotionPrice.value);
    }
    if (specialPrice.present) {
      map['special_price'] = Variable<double>(specialPrice.value);
    }
    if (advancedPrice.present) {
      map['advanced_price'] = Variable<double>(advancedPrice.value);
    }
    if (enable.present) {
      map['enable'] = Variable<bool>(enable.value);
    }
    if (warehouseLocation.present) {
      map['warehouse_location'] = Variable<String>(warehouseLocation.value);
    }
    if (outletLocation.present) {
      map['outlet_location'] = Variable<String>(outletLocation.value);
    }
    if (rackLocation.present) {
      map['rack_location'] = Variable<String>(rackLocation.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (height.present) {
      map['height'] = Variable<double>(height.value);
    }
    if (manufactureCountry.present) {
      map['manufacture_country'] = Variable<String>(manufactureCountry.value);
    }
    if (manufacturedDate.present) {
      map['manufactured_date'] = Variable<DateTime>(manufacturedDate.value);
    }
    if (expireDate.present) {
      map['expire_date'] = Variable<DateTime>(expireDate.value);
    }
    if (averageRating.present) {
      map['average_rating'] = Variable<double>(averageRating.value);
    }
    if (totalNumberOfRating.present) {
      map['total_number_of_rating'] =
          Variable<double>(totalNumberOfRating.value);
    }
    if (average5PercentRating.present) {
      map['average5_percent_rating'] =
          Variable<double>(average5PercentRating.value);
    }
    if (average4PercentRating.present) {
      map['average4_percent_rating'] =
          Variable<double>(average4PercentRating.value);
    }
    if (average3PercentRating.present) {
      map['average3_percent_rating'] =
          Variable<double>(average3PercentRating.value);
    }
    if (average2PercentRating.present) {
      map['average2_percent_rating'] =
          Variable<double>(average2PercentRating.value);
    }
    if (average1PercentRating.present) {
      map['average1_percent_rating'] =
          Variable<double>(average1PercentRating.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (qrcode.present) {
      map['qrcode'] = Variable<String>(qrcode.value);
    }
    if (taxInPercentage.present) {
      map['tax_in_percentage'] = Variable<double>(taxInPercentage.value);
    }
    if (vatInPercentage.present) {
      map['vat_in_percentage'] = Variable<double>(vatInPercentage.value);
    }
    if (types.present) {
      map['types'] = Variable<String>(types.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (sku.present) {
      map['sku'] = Variable<String>(sku.value);
    }
    if (inventory.present) {
      map['inventory'] = Variable<int>(inventory.value);
    }
    if (newFrom.present) {
      map['new_from'] = Variable<DateTime>(newFrom.value);
    }
    if (newTill.present) {
      map['new_till'] = Variable<DateTime>(newTill.value);
    }
    if (isDownloadable.present) {
      map['is_downloadable'] = Variable<bool>(isDownloadable.value);
    }
    if (downloadedFile.present) {
      map['downloaded_file'] = Variable<BigInt>(downloadedFile.value);
    }
    if (relatedProducts.present) {
      map['related_products'] = Variable<String>(relatedProducts.value);
    }
    if (crossSellProducts.present) {
      map['cross_sell_products'] = Variable<String>(crossSellProducts.value);
    }
    if (upSellProducts.present) {
      map['up_sell_products'] = Variable<String>(upSellProducts.value);
    }
    if (files.present) {
      map['files'] = Variable<String>(files.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (updatedBy.present) {
      map['updated_by'] = Variable<String>(updatedBy.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (shelfLife.present) {
      map['shelf_life'] = Variable<int>(shelfLife.value);
    }
    if (minimumInventory.present) {
      map['minimum_inventory'] = Variable<int>(minimumInventory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableCompanion(')
          ..write('sl: $sl, ')
          ..write('productId: $productId, ')
          ..write('categoryId: $categoryId, ')
          ..write('position: $position, ')
          ..write('label: $label, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('posLabel: $posLabel, ')
          ..write('description: $description, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('price: $price, ')
          ..write('promotionPrice: $promotionPrice, ')
          ..write('specialPrice: $specialPrice, ')
          ..write('advancedPrice: $advancedPrice, ')
          ..write('enable: $enable, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('manufactureCountry: $manufactureCountry, ')
          ..write('manufacturedDate: $manufacturedDate, ')
          ..write('expireDate: $expireDate, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalNumberOfRating: $totalNumberOfRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating, ')
          ..write('barcode: $barcode, ')
          ..write('qrcode: $qrcode, ')
          ..write('taxInPercentage: $taxInPercentage, ')
          ..write('vatInPercentage: $vatInPercentage, ')
          ..write('types: $types, ')
          ..write('tags: $tags, ')
          ..write('sku: $sku, ')
          ..write('inventory: $inventory, ')
          ..write('newFrom: $newFrom, ')
          ..write('newTill: $newTill, ')
          ..write('isDownloadable: $isDownloadable, ')
          ..write('downloadedFile: $downloadedFile, ')
          ..write('relatedProducts: $relatedProducts, ')
          ..write('crossSellProducts: $crossSellProducts, ')
          ..write('upSellProducts: $upSellProducts, ')
          ..write('files: $files, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categoryTable, orderTable, productTable];
}
