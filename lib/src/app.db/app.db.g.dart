// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.db.dart';

// ignore_for_file: type=lint
class $ConfigTableTable extends ConfigTable
    with TableInfo<$ConfigTableTable, ConfigTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConfigTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _slMeta = const VerificationMeta('sl');
  @override
  late final GeneratedColumn<int> sl = GeneratedColumn<int>(
      'sl', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _keyColumnMeta =
      const VerificationMeta('keyColumn');
  @override
  late final GeneratedColumn<String> keyColumn = GeneratedColumn<String>(
      'key_column', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _valueColumnMeta =
      const VerificationMeta('valueColumn');
  @override
  late final GeneratedColumn<String> valueColumn = GeneratedColumn<String>(
      'value_column', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [sl, keyColumn, valueColumn];
  @override
  String get aliasedName => _alias ?? 'config_table';
  @override
  String get actualTableName => 'config_table';
  @override
  VerificationContext validateIntegrity(Insertable<ConfigTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sl')) {
      context.handle(_slMeta, sl.isAcceptableOrUnknown(data['sl']!, _slMeta));
    }
    if (data.containsKey('key_column')) {
      context.handle(_keyColumnMeta,
          keyColumn.isAcceptableOrUnknown(data['key_column']!, _keyColumnMeta));
    }
    if (data.containsKey('value_column')) {
      context.handle(
          _valueColumnMeta,
          valueColumn.isAcceptableOrUnknown(
              data['value_column']!, _valueColumnMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sl};
  @override
  ConfigTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ConfigTableData(
      sl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sl']),
      keyColumn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key_column']),
      valueColumn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value_column']),
    );
  }

  @override
  $ConfigTableTable createAlias(String alias) {
    return $ConfigTableTable(attachedDatabase, alias);
  }
}

class ConfigTableData extends DataClass implements Insertable<ConfigTableData> {
  final int? sl;
  final String? keyColumn;
  final String? valueColumn;
  const ConfigTableData({this.sl, this.keyColumn, this.valueColumn});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || keyColumn != null) {
      map['key_column'] = Variable<String>(keyColumn);
    }
    if (!nullToAbsent || valueColumn != null) {
      map['value_column'] = Variable<String>(valueColumn);
    }
    return map;
  }

  ConfigTableCompanion toCompanion(bool nullToAbsent) {
    return ConfigTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      keyColumn: keyColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(keyColumn),
      valueColumn: valueColumn == null && nullToAbsent
          ? const Value.absent()
          : Value(valueColumn),
    );
  }

  factory ConfigTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ConfigTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      keyColumn: serializer.fromJson<String?>(json['keyColumn']),
      valueColumn: serializer.fromJson<String?>(json['valueColumn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'keyColumn': serializer.toJson<String?>(keyColumn),
      'valueColumn': serializer.toJson<String?>(valueColumn),
    };
  }

  ConfigTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> keyColumn = const Value.absent(),
          Value<String?> valueColumn = const Value.absent()}) =>
      ConfigTableData(
        sl: sl.present ? sl.value : this.sl,
        keyColumn: keyColumn.present ? keyColumn.value : this.keyColumn,
        valueColumn: valueColumn.present ? valueColumn.value : this.valueColumn,
      );
  @override
  String toString() {
    return (StringBuffer('ConfigTableData(')
          ..write('sl: $sl, ')
          ..write('keyColumn: $keyColumn, ')
          ..write('valueColumn: $valueColumn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(sl, keyColumn, valueColumn);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConfigTableData &&
          other.sl == this.sl &&
          other.keyColumn == this.keyColumn &&
          other.valueColumn == this.valueColumn);
}

class ConfigTableCompanion extends UpdateCompanion<ConfigTableData> {
  final Value<int?> sl;
  final Value<String?> keyColumn;
  final Value<String?> valueColumn;
  const ConfigTableCompanion({
    this.sl = const Value.absent(),
    this.keyColumn = const Value.absent(),
    this.valueColumn = const Value.absent(),
  });
  ConfigTableCompanion.insert({
    this.sl = const Value.absent(),
    this.keyColumn = const Value.absent(),
    this.valueColumn = const Value.absent(),
  });
  static Insertable<ConfigTableData> custom({
    Expression<int>? sl,
    Expression<String>? keyColumn,
    Expression<String>? valueColumn,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (keyColumn != null) 'key_column': keyColumn,
      if (valueColumn != null) 'value_column': valueColumn,
    });
  }

  ConfigTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? keyColumn,
      Value<String?>? valueColumn}) {
    return ConfigTableCompanion(
      sl: sl ?? this.sl,
      keyColumn: keyColumn ?? this.keyColumn,
      valueColumn: valueColumn ?? this.valueColumn,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (sl.present) {
      map['sl'] = Variable<int>(sl.value);
    }
    if (keyColumn.present) {
      map['key_column'] = Variable<String>(keyColumn.value);
    }
    if (valueColumn.present) {
      map['value_column'] = Variable<String>(valueColumn.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfigTableCompanion(')
          ..write('sl: $sl, ')
          ..write('keyColumn: $keyColumn, ')
          ..write('valueColumn: $valueColumn')
          ..write(')'))
        .toString();
  }
}

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
  static const VerificationMeta _menuMeta = const VerificationMeta('menu');
  @override
  late final GeneratedColumn<bool> menu = GeneratedColumn<bool>(
      'menu', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("menu" IN (0, 1))'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _enableMeta = const VerificationMeta('enable');
  @override
  late final GeneratedColumn<int> enable = GeneratedColumn<int>(
      'enable', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  static const VerificationMeta _specialCategoryMeta =
      const VerificationMeta('specialCategory');
  @override
  late final GeneratedColumn<bool> specialCategory = GeneratedColumn<bool>(
      'special_category', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("special_category" IN (0, 1))'));
  static const VerificationMeta _bestSellCategoryMeta =
      const VerificationMeta('bestSellCategory');
  @override
  late final GeneratedColumn<bool> bestSellCategory = GeneratedColumn<bool>(
      'best_sale_category', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("best_sale_category" IN (0, 1))'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _createdByMeta =
      const VerificationMeta('createdBy');
  @override
  late final GeneratedColumn<String> createdBy = GeneratedColumn<String>(
      'created_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'updated_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        id,
        label,
        parentId,
        menu,
        description,
        position,
        enable,
        liveSales,
        root,
        home,
        specialCategory,
        bestSellCategory,
        type,
        tags,
        categoryFiles,
        createdAt,
        createdBy,
        updatedAt,
        updatedBy,
        shelfLife,
        minimumInventory,
        warehouseLocation,
        outletLocation,
        rackLocation
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
    if (data.containsKey('menu')) {
      context.handle(
          _menuMeta, menu.isAcceptableOrUnknown(data['menu']!, _menuMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('enable')) {
      context.handle(_enableMeta,
          enable.isAcceptableOrUnknown(data['enable']!, _enableMeta));
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
    if (data.containsKey('special_category')) {
      context.handle(
          _specialCategoryMeta,
          specialCategory.isAcceptableOrUnknown(
              data['special_category']!, _specialCategoryMeta));
    }
    if (data.containsKey('best_sale_category')) {
      context.handle(
          _bestSellCategoryMeta,
          bestSellCategory.isAcceptableOrUnknown(
              data['best_sale_category']!, _bestSellCategoryMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
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
    if (data.containsKey('created_by')) {
      context.handle(_createdByMeta,
          createdBy.isAcceptableOrUnknown(data['created_by']!, _createdByMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('updated_by')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['updated_by']!, _updatedByMeta));
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
      menu: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}menu']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position']),
      enable: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}enable']),
      liveSales: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}live_sales']),
      root: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}root']),
      home: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}home']),
      specialCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}special_category']),
      bestSellCategory: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}best_sale_category']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
      categoryFiles: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_files']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_by']),
      shelfLife: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}shelf_life']),
      minimumInventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minimum_inventory']),
      warehouseLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}warehouse_location']),
      outletLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}outlet_location']),
      rackLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rack_location']),
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
  final bool? menu;
  final String? description;
  final int? position;
  final int? enable;
  final bool? liveSales;
  final bool? root;
  final bool? home;
  final bool? specialCategory;
  final bool? bestSellCategory;
  final String? type;
  final String? tags;
  final String? categoryFiles;
  final DateTime? createdAt;
  final String? createdBy;
  final DateTime? updatedAt;
  final String? updatedBy;
  final int? shelfLife;
  final int? minimumInventory;
  final String? warehouseLocation;
  final String? outletLocation;
  final String? rackLocation;
  const CategoryTableData(
      {this.sl,
      this.id,
      this.label,
      this.parentId,
      this.menu,
      this.description,
      this.position,
      this.enable,
      this.liveSales,
      this.root,
      this.home,
      this.specialCategory,
      this.bestSellCategory,
      this.type,
      this.tags,
      this.categoryFiles,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.shelfLife,
      this.minimumInventory,
      this.warehouseLocation,
      this.outletLocation,
      this.rackLocation});
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
    if (!nullToAbsent || menu != null) {
      map['menu'] = Variable<bool>(menu);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || enable != null) {
      map['enable'] = Variable<int>(enable);
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
    if (!nullToAbsent || specialCategory != null) {
      map['special_category'] = Variable<bool>(specialCategory);
    }
    if (!nullToAbsent || bestSellCategory != null) {
      map['best_sale_category'] = Variable<bool>(bestSellCategory);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
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
    if (!nullToAbsent || createdBy != null) {
      map['created_by'] = Variable<String>(createdBy);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['updated_by'] = Variable<String>(updatedBy);
    }
    if (!nullToAbsent || shelfLife != null) {
      map['shelf_life'] = Variable<int>(shelfLife);
    }
    if (!nullToAbsent || minimumInventory != null) {
      map['minimum_inventory'] = Variable<int>(minimumInventory);
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
      menu: menu == null && nullToAbsent ? const Value.absent() : Value(menu),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      enable:
          enable == null && nullToAbsent ? const Value.absent() : Value(enable),
      liveSales: liveSales == null && nullToAbsent
          ? const Value.absent()
          : Value(liveSales),
      root: root == null && nullToAbsent ? const Value.absent() : Value(root),
      home: home == null && nullToAbsent ? const Value.absent() : Value(home),
      specialCategory: specialCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(specialCategory),
      bestSellCategory: bestSellCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(bestSellCategory),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      categoryFiles: categoryFiles == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryFiles),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
      shelfLife: shelfLife == null && nullToAbsent
          ? const Value.absent()
          : Value(shelfLife),
      minimumInventory: minimumInventory == null && nullToAbsent
          ? const Value.absent()
          : Value(minimumInventory),
      warehouseLocation: warehouseLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(warehouseLocation),
      outletLocation: outletLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(outletLocation),
      rackLocation: rackLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(rackLocation),
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
      menu: serializer.fromJson<bool?>(json['menu']),
      description: serializer.fromJson<String?>(json['description']),
      position: serializer.fromJson<int?>(json['position']),
      enable: serializer.fromJson<int?>(json['enable']),
      liveSales: serializer.fromJson<bool?>(json['liveSales']),
      root: serializer.fromJson<bool?>(json['root']),
      home: serializer.fromJson<bool?>(json['home']),
      specialCategory: serializer.fromJson<bool?>(json['specialCategory']),
      bestSellCategory: serializer.fromJson<bool?>(json['bestSellCategory']),
      type: serializer.fromJson<String?>(json['type']),
      tags: serializer.fromJson<String?>(json['tags']),
      categoryFiles: serializer.fromJson<String?>(json['categoryFiles']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      shelfLife: serializer.fromJson<int?>(json['shelfLife']),
      minimumInventory: serializer.fromJson<int?>(json['minimumInventory']),
      warehouseLocation:
          serializer.fromJson<String?>(json['warehouseLocation']),
      outletLocation: serializer.fromJson<String?>(json['outletLocation']),
      rackLocation: serializer.fromJson<String?>(json['rackLocation']),
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
      'menu': serializer.toJson<bool?>(menu),
      'description': serializer.toJson<String?>(description),
      'position': serializer.toJson<int?>(position),
      'enable': serializer.toJson<int?>(enable),
      'liveSales': serializer.toJson<bool?>(liveSales),
      'root': serializer.toJson<bool?>(root),
      'home': serializer.toJson<bool?>(home),
      'specialCategory': serializer.toJson<bool?>(specialCategory),
      'bestSellCategory': serializer.toJson<bool?>(bestSellCategory),
      'type': serializer.toJson<String?>(type),
      'tags': serializer.toJson<String?>(tags),
      'categoryFiles': serializer.toJson<String?>(categoryFiles),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'shelfLife': serializer.toJson<int?>(shelfLife),
      'minimumInventory': serializer.toJson<int?>(minimumInventory),
      'warehouseLocation': serializer.toJson<String?>(warehouseLocation),
      'outletLocation': serializer.toJson<String?>(outletLocation),
      'rackLocation': serializer.toJson<String?>(rackLocation),
    };
  }

  CategoryTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> label = const Value.absent(),
          Value<String?> parentId = const Value.absent(),
          Value<bool?> menu = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<int?> enable = const Value.absent(),
          Value<bool?> liveSales = const Value.absent(),
          Value<bool?> root = const Value.absent(),
          Value<bool?> home = const Value.absent(),
          Value<bool?> specialCategory = const Value.absent(),
          Value<bool?> bestSellCategory = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          Value<String?> categoryFiles = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<int?> shelfLife = const Value.absent(),
          Value<int?> minimumInventory = const Value.absent(),
          Value<String?> warehouseLocation = const Value.absent(),
          Value<String?> outletLocation = const Value.absent(),
          Value<String?> rackLocation = const Value.absent()}) =>
      CategoryTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        label: label.present ? label.value : this.label,
        parentId: parentId.present ? parentId.value : this.parentId,
        menu: menu.present ? menu.value : this.menu,
        description: description.present ? description.value : this.description,
        position: position.present ? position.value : this.position,
        enable: enable.present ? enable.value : this.enable,
        liveSales: liveSales.present ? liveSales.value : this.liveSales,
        root: root.present ? root.value : this.root,
        home: home.present ? home.value : this.home,
        specialCategory: specialCategory.present
            ? specialCategory.value
            : this.specialCategory,
        bestSellCategory: bestSellCategory.present
            ? bestSellCategory.value
            : this.bestSellCategory,
        type: type.present ? type.value : this.type,
        tags: tags.present ? tags.value : this.tags,
        categoryFiles:
            categoryFiles.present ? categoryFiles.value : this.categoryFiles,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        shelfLife: shelfLife.present ? shelfLife.value : this.shelfLife,
        minimumInventory: minimumInventory.present
            ? minimumInventory.value
            : this.minimumInventory,
        warehouseLocation: warehouseLocation.present
            ? warehouseLocation.value
            : this.warehouseLocation,
        outletLocation:
            outletLocation.present ? outletLocation.value : this.outletLocation,
        rackLocation:
            rackLocation.present ? rackLocation.value : this.rackLocation,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('menu: $menu, ')
          ..write('description: $description, ')
          ..write('position: $position, ')
          ..write('enable: $enable, ')
          ..write('liveSales: $liveSales, ')
          ..write('root: $root, ')
          ..write('home: $home, ')
          ..write('specialCategory: $specialCategory, ')
          ..write('bestSellCategory: $bestSellCategory, ')
          ..write('type: $type, ')
          ..write('tags: $tags, ')
          ..write('categoryFiles: $categoryFiles, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        id,
        label,
        parentId,
        menu,
        description,
        position,
        enable,
        liveSales,
        root,
        home,
        specialCategory,
        bestSellCategory,
        type,
        tags,
        categoryFiles,
        createdAt,
        createdBy,
        updatedAt,
        updatedBy,
        shelfLife,
        minimumInventory,
        warehouseLocation,
        outletLocation,
        rackLocation
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.label == this.label &&
          other.parentId == this.parentId &&
          other.menu == this.menu &&
          other.description == this.description &&
          other.position == this.position &&
          other.enable == this.enable &&
          other.liveSales == this.liveSales &&
          other.root == this.root &&
          other.home == this.home &&
          other.specialCategory == this.specialCategory &&
          other.bestSellCategory == this.bestSellCategory &&
          other.type == this.type &&
          other.tags == this.tags &&
          other.categoryFiles == this.categoryFiles &&
          other.createdAt == this.createdAt &&
          other.createdBy == this.createdBy &&
          other.updatedAt == this.updatedAt &&
          other.updatedBy == this.updatedBy &&
          other.shelfLife == this.shelfLife &&
          other.minimumInventory == this.minimumInventory &&
          other.warehouseLocation == this.warehouseLocation &&
          other.outletLocation == this.outletLocation &&
          other.rackLocation == this.rackLocation);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> label;
  final Value<String?> parentId;
  final Value<bool?> menu;
  final Value<String?> description;
  final Value<int?> position;
  final Value<int?> enable;
  final Value<bool?> liveSales;
  final Value<bool?> root;
  final Value<bool?> home;
  final Value<bool?> specialCategory;
  final Value<bool?> bestSellCategory;
  final Value<String?> type;
  final Value<String?> tags;
  final Value<String?> categoryFiles;
  final Value<DateTime?> createdAt;
  final Value<String?> createdBy;
  final Value<DateTime?> updatedAt;
  final Value<String?> updatedBy;
  final Value<int?> shelfLife;
  final Value<int?> minimumInventory;
  final Value<String?> warehouseLocation;
  final Value<String?> outletLocation;
  final Value<String?> rackLocation;
  const CategoryTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.parentId = const Value.absent(),
    this.menu = const Value.absent(),
    this.description = const Value.absent(),
    this.position = const Value.absent(),
    this.enable = const Value.absent(),
    this.liveSales = const Value.absent(),
    this.root = const Value.absent(),
    this.home = const Value.absent(),
    this.specialCategory = const Value.absent(),
    this.bestSellCategory = const Value.absent(),
    this.type = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryFiles = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.parentId = const Value.absent(),
    this.menu = const Value.absent(),
    this.description = const Value.absent(),
    this.position = const Value.absent(),
    this.enable = const Value.absent(),
    this.liveSales = const Value.absent(),
    this.root = const Value.absent(),
    this.home = const Value.absent(),
    this.specialCategory = const Value.absent(),
    this.bestSellCategory = const Value.absent(),
    this.type = const Value.absent(),
    this.tags = const Value.absent(),
    this.categoryFiles = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
  });
  static Insertable<CategoryTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? label,
    Expression<String>? parentId,
    Expression<bool>? menu,
    Expression<String>? description,
    Expression<int>? position,
    Expression<int>? enable,
    Expression<bool>? liveSales,
    Expression<bool>? root,
    Expression<bool>? home,
    Expression<bool>? specialCategory,
    Expression<bool>? bestSellCategory,
    Expression<String>? type,
    Expression<String>? tags,
    Expression<String>? categoryFiles,
    Expression<DateTime>? createdAt,
    Expression<String>? createdBy,
    Expression<DateTime>? updatedAt,
    Expression<String>? updatedBy,
    Expression<int>? shelfLife,
    Expression<int>? minimumInventory,
    Expression<String>? warehouseLocation,
    Expression<String>? outletLocation,
    Expression<String>? rackLocation,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (parentId != null) 'parent_id': parentId,
      if (menu != null) 'menu': menu,
      if (description != null) 'description': description,
      if (position != null) 'position': position,
      if (enable != null) 'enable': enable,
      if (liveSales != null) 'live_sales': liveSales,
      if (root != null) 'root': root,
      if (home != null) 'home': home,
      if (specialCategory != null) 'special_category': specialCategory,
      if (bestSellCategory != null) 'best_sale_category': bestSellCategory,
      if (type != null) 'type': type,
      if (tags != null) 'tags': tags,
      if (categoryFiles != null) 'category_files': categoryFiles,
      if (createdAt != null) 'created_at': createdAt,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (updatedBy != null) 'updated_by': updatedBy,
      if (shelfLife != null) 'shelf_life': shelfLife,
      if (minimumInventory != null) 'minimum_inventory': minimumInventory,
      if (warehouseLocation != null) 'warehouse_location': warehouseLocation,
      if (outletLocation != null) 'outlet_location': outletLocation,
      if (rackLocation != null) 'rack_location': rackLocation,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? label,
      Value<String?>? parentId,
      Value<bool?>? menu,
      Value<String?>? description,
      Value<int?>? position,
      Value<int?>? enable,
      Value<bool?>? liveSales,
      Value<bool?>? root,
      Value<bool?>? home,
      Value<bool?>? specialCategory,
      Value<bool?>? bestSellCategory,
      Value<String?>? type,
      Value<String?>? tags,
      Value<String?>? categoryFiles,
      Value<DateTime?>? createdAt,
      Value<String?>? createdBy,
      Value<DateTime?>? updatedAt,
      Value<String?>? updatedBy,
      Value<int?>? shelfLife,
      Value<int?>? minimumInventory,
      Value<String?>? warehouseLocation,
      Value<String?>? outletLocation,
      Value<String?>? rackLocation}) {
    return CategoryTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      label: label ?? this.label,
      parentId: parentId ?? this.parentId,
      menu: menu ?? this.menu,
      description: description ?? this.description,
      position: position ?? this.position,
      enable: enable ?? this.enable,
      liveSales: liveSales ?? this.liveSales,
      root: root ?? this.root,
      home: home ?? this.home,
      specialCategory: specialCategory ?? this.specialCategory,
      bestSellCategory: bestSellCategory ?? this.bestSellCategory,
      type: type ?? this.type,
      tags: tags ?? this.tags,
      categoryFiles: categoryFiles ?? this.categoryFiles,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
      shelfLife: shelfLife ?? this.shelfLife,
      minimumInventory: minimumInventory ?? this.minimumInventory,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      rackLocation: rackLocation ?? this.rackLocation,
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
    if (menu.present) {
      map['menu'] = Variable<bool>(menu.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (enable.present) {
      map['enable'] = Variable<int>(enable.value);
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
    if (specialCategory.present) {
      map['special_category'] = Variable<bool>(specialCategory.value);
    }
    if (bestSellCategory.present) {
      map['best_sale_category'] = Variable<bool>(bestSellCategory.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
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
    if (createdBy.present) {
      map['created_by'] = Variable<String>(createdBy.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (updatedBy.present) {
      map['updated_by'] = Variable<String>(updatedBy.value);
    }
    if (shelfLife.present) {
      map['shelf_life'] = Variable<int>(shelfLife.value);
    }
    if (minimumInventory.present) {
      map['minimum_inventory'] = Variable<int>(minimumInventory.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('parentId: $parentId, ')
          ..write('menu: $menu, ')
          ..write('description: $description, ')
          ..write('position: $position, ')
          ..write('enable: $enable, ')
          ..write('liveSales: $liveSales, ')
          ..write('root: $root, ')
          ..write('home: $home, ')
          ..write('specialCategory: $specialCategory, ')
          ..write('bestSellCategory: $bestSellCategory, ')
          ..write('type: $type, ')
          ..write('tags: $tags, ')
          ..write('categoryFiles: $categoryFiles, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation')
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

class $ItemTableTable extends ItemTable
    with TableInfo<$ItemTableTable, ItemTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemTableTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _orderSlMeta =
      const VerificationMeta('orderSl');
  @override
  late final GeneratedColumn<int> orderSl = GeneratedColumn<int>(
      'order_sl', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES order_table (sl)'));
  static const VerificationMeta _isCustomItemMeta =
      const VerificationMeta('isCustomItem');
  @override
  late final GeneratedColumn<bool> isCustomItem = GeneratedColumn<bool>(
      'is_custom_item', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_custom_item" IN (0, 1))'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
      'count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _vatMeta = const VerificationMeta('vat');
  @override
  late final GeneratedColumn<double> vat = GeneratedColumn<double>(
      'vat_in_percentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [sl, id, orderSl, isCustomItem, name, count, price, imageUrl, vat];
  @override
  String get aliasedName => _alias ?? 'item_table';
  @override
  String get actualTableName => 'item_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sl')) {
      context.handle(_slMeta, sl.isAcceptableOrUnknown(data['sl']!, _slMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_sl')) {
      context.handle(_orderSlMeta,
          orderSl.isAcceptableOrUnknown(data['order_sl']!, _orderSlMeta));
    }
    if (data.containsKey('is_custom_item')) {
      context.handle(
          _isCustomItemMeta,
          isCustomItem.isAcceptableOrUnknown(
              data['is_custom_item']!, _isCustomItemMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count']!, _countMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('vat_in_percentage')) {
      context.handle(_vatMeta,
          vat.isAcceptableOrUnknown(data['vat_in_percentage']!, _vatMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {sl};
  @override
  ItemTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemTableData(
      sl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sl']),
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      orderSl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_sl']),
      isCustomItem: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_custom_item']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      count: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}count']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      vat: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}vat_in_percentage']),
    );
  }

  @override
  $ItemTableTable createAlias(String alias) {
    return $ItemTableTable(attachedDatabase, alias);
  }
}

class ItemTableData extends DataClass implements Insertable<ItemTableData> {
  final int? sl;
  final String? id;
  final int? orderSl;
  final bool? isCustomItem;
  final String? name;
  final int? count;
  final double? price;
  final String? imageUrl;
  final double? vat;
  const ItemTableData(
      {this.sl,
      this.id,
      this.orderSl,
      this.isCustomItem,
      this.name,
      this.count,
      this.price,
      this.imageUrl,
      this.vat});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || orderSl != null) {
      map['order_sl'] = Variable<int>(orderSl);
    }
    if (!nullToAbsent || isCustomItem != null) {
      map['is_custom_item'] = Variable<bool>(isCustomItem);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || count != null) {
      map['count'] = Variable<int>(count);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || vat != null) {
      map['vat_in_percentage'] = Variable<double>(vat);
    }
    return map;
  }

  ItemTableCompanion toCompanion(bool nullToAbsent) {
    return ItemTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      orderSl: orderSl == null && nullToAbsent
          ? const Value.absent()
          : Value(orderSl),
      isCustomItem: isCustomItem == null && nullToAbsent
          ? const Value.absent()
          : Value(isCustomItem),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      count:
          count == null && nullToAbsent ? const Value.absent() : Value(count),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      vat: vat == null && nullToAbsent ? const Value.absent() : Value(vat),
    );
  }

  factory ItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      id: serializer.fromJson<String?>(json['id']),
      orderSl: serializer.fromJson<int?>(json['orderSl']),
      isCustomItem: serializer.fromJson<bool?>(json['isCustomItem']),
      name: serializer.fromJson<String?>(json['name']),
      count: serializer.fromJson<int?>(json['count']),
      price: serializer.fromJson<double?>(json['price']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      vat: serializer.fromJson<double?>(json['vat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'orderSl': serializer.toJson<int?>(orderSl),
      'isCustomItem': serializer.toJson<bool?>(isCustomItem),
      'name': serializer.toJson<String?>(name),
      'count': serializer.toJson<int?>(count),
      'price': serializer.toJson<double?>(price),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'vat': serializer.toJson<double?>(vat),
    };
  }

  ItemTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<int?> orderSl = const Value.absent(),
          Value<bool?> isCustomItem = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<int?> count = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<double?> vat = const Value.absent()}) =>
      ItemTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        orderSl: orderSl.present ? orderSl.value : this.orderSl,
        isCustomItem:
            isCustomItem.present ? isCustomItem.value : this.isCustomItem,
        name: name.present ? name.value : this.name,
        count: count.present ? count.value : this.count,
        price: price.present ? price.value : this.price,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        vat: vat.present ? vat.value : this.vat,
      );
  @override
  String toString() {
    return (StringBuffer('ItemTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('orderSl: $orderSl, ')
          ..write('isCustomItem: $isCustomItem, ')
          ..write('name: $name, ')
          ..write('count: $count, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('vat: $vat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      sl, id, orderSl, isCustomItem, name, count, price, imageUrl, vat);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.orderSl == this.orderSl &&
          other.isCustomItem == this.isCustomItem &&
          other.name == this.name &&
          other.count == this.count &&
          other.price == this.price &&
          other.imageUrl == this.imageUrl &&
          other.vat == this.vat);
}

class ItemTableCompanion extends UpdateCompanion<ItemTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<int?> orderSl;
  final Value<bool?> isCustomItem;
  final Value<String?> name;
  final Value<int?> count;
  final Value<double?> price;
  final Value<String?> imageUrl;
  final Value<double?> vat;
  const ItemTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.orderSl = const Value.absent(),
    this.isCustomItem = const Value.absent(),
    this.name = const Value.absent(),
    this.count = const Value.absent(),
    this.price = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.vat = const Value.absent(),
  });
  ItemTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.orderSl = const Value.absent(),
    this.isCustomItem = const Value.absent(),
    this.name = const Value.absent(),
    this.count = const Value.absent(),
    this.price = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.vat = const Value.absent(),
  });
  static Insertable<ItemTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<int>? orderSl,
    Expression<bool>? isCustomItem,
    Expression<String>? name,
    Expression<int>? count,
    Expression<double>? price,
    Expression<String>? imageUrl,
    Expression<double>? vat,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (orderSl != null) 'order_sl': orderSl,
      if (isCustomItem != null) 'is_custom_item': isCustomItem,
      if (name != null) 'name': name,
      if (count != null) 'count': count,
      if (price != null) 'price': price,
      if (imageUrl != null) 'image_url': imageUrl,
      if (vat != null) 'vat_in_percentage': vat,
    });
  }

  ItemTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<int?>? orderSl,
      Value<bool?>? isCustomItem,
      Value<String?>? name,
      Value<int?>? count,
      Value<double?>? price,
      Value<String?>? imageUrl,
      Value<double?>? vat}) {
    return ItemTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      orderSl: orderSl ?? this.orderSl,
      isCustomItem: isCustomItem ?? this.isCustomItem,
      name: name ?? this.name,
      count: count ?? this.count,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      vat: vat ?? this.vat,
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
    if (orderSl.present) {
      map['order_sl'] = Variable<int>(orderSl.value);
    }
    if (isCustomItem.present) {
      map['is_custom_item'] = Variable<bool>(isCustomItem.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (vat.present) {
      map['vat_in_percentage'] = Variable<double>(vat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('orderSl: $orderSl, ')
          ..write('isCustomItem: $isCustomItem, ')
          ..write('name: $name, ')
          ..write('count: $count, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('vat: $vat')
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
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
  static const VerificationMeta _shortdescriptionMeta =
      const VerificationMeta('shortdescription');
  @override
  late final GeneratedColumn<String> shortdescription = GeneratedColumn<String>(
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
  static const VerificationMeta _advancePriceMeta =
      const VerificationMeta('advancePrice');
  @override
  late final GeneratedColumn<double> advancePrice = GeneratedColumn<double>(
      'advance_price', aliasedName, true,
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
  static const VerificationMeta _manufactureDateMeta =
      const VerificationMeta('manufactureDate');
  @override
  late final GeneratedColumn<DateTime> manufactureDate =
      GeneratedColumn<DateTime>('manufacture_date', aliasedName, true,
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
  late final GeneratedColumn<int> averageRating = GeneratedColumn<int>(
      'average_rating', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalRatingMeta =
      const VerificationMeta('totalRating');
  @override
  late final GeneratedColumn<int> totalRating = GeneratedColumn<int>(
      'total_number_of_rating', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _average5PercentRatingMeta =
      const VerificationMeta('average5PercentRating');
  @override
  late final GeneratedColumn<double> average5PercentRating =
      GeneratedColumn<double>('average_5_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average4PercentRatingMeta =
      const VerificationMeta('average4PercentRating');
  @override
  late final GeneratedColumn<double> average4PercentRating =
      GeneratedColumn<double>('average_4_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average3PercentRatingMeta =
      const VerificationMeta('average3PercentRating');
  @override
  late final GeneratedColumn<double> average3PercentRating =
      GeneratedColumn<double>('average_3_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average2PercentRatingMeta =
      const VerificationMeta('average2PercentRating');
  @override
  late final GeneratedColumn<double> average2PercentRating =
      GeneratedColumn<double>('average_2_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _average1PercentRatingMeta =
      const VerificationMeta('average1PercentRating');
  @override
  late final GeneratedColumn<double> average1PercentRating =
      GeneratedColumn<double>('average_1_percent_rating', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _barCodeMeta =
      const VerificationMeta('barCode');
  @override
  late final GeneratedColumn<String> barCode = GeneratedColumn<String>(
      'bar_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedColumn<String> qrCode = GeneratedColumn<String>(
      'qr_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _vatMeta = const VerificationMeta('vat');
  @override
  late final GeneratedColumn<double> vat = GeneratedColumn<double>(
      'vat', aliasedName, true,
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
      'is_downladable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_downladable" IN (0, 1))'));
  static const VerificationMeta _downloadedFilesMeta =
      const VerificationMeta('downloadedFiles');
  @override
  late final GeneratedColumn<String> downloadedFiles = GeneratedColumn<String>(
      'downloaded_files', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specialPriceMeta =
      const VerificationMeta('specialPrice');
  @override
  late final GeneratedColumn<double> specialPrice = GeneratedColumn<double>(
      'special_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _relatedProductsMeta =
      const VerificationMeta('relatedProducts');
  @override
  late final GeneratedColumn<String> relatedProducts = GeneratedColumn<String>(
      'related_products', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _crossSaleProductsMeta =
      const VerificationMeta('crossSaleProducts');
  @override
  late final GeneratedColumn<String> crossSaleProducts =
      GeneratedColumn<String>('cross_sale_products', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _upSaleProductsMeta =
      const VerificationMeta('upSaleProducts');
  @override
  late final GeneratedColumn<String> upSaleProducts = GeneratedColumn<String>(
      'up_sale_products', aliasedName, true,
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
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedByMeta =
      const VerificationMeta('updatedBy');
  @override
  late final GeneratedColumn<String> updatedBy = GeneratedColumn<String>(
      'updated_by', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
        id,
        categoryId,
        position,
        label,
        categoryLabel,
        posLabel,
        description,
        shortdescription,
        price,
        promotionPrice,
        advancePrice,
        enable,
        warehouseLocation,
        outletLocation,
        rackLocation,
        weight,
        height,
        manufactureCountry,
        manufactureDate,
        expireDate,
        averageRating,
        totalRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating,
        barCode,
        qrCode,
        tax,
        vat,
        types,
        tags,
        sku,
        inventory,
        newFrom,
        newTill,
        isDownloadable,
        downloadedFiles,
        specialPrice,
        relatedProducts,
        crossSaleProducts,
        upSaleProducts,
        files,
        createdAt,
        createdBy,
        updatedAt,
        updatedBy,
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
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
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
          _shortdescriptionMeta,
          shortdescription.isAcceptableOrUnknown(
              data['short_description']!, _shortdescriptionMeta));
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
    if (data.containsKey('advance_price')) {
      context.handle(
          _advancePriceMeta,
          advancePrice.isAcceptableOrUnknown(
              data['advance_price']!, _advancePriceMeta));
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
    if (data.containsKey('manufacture_date')) {
      context.handle(
          _manufactureDateMeta,
          manufactureDate.isAcceptableOrUnknown(
              data['manufacture_date']!, _manufactureDateMeta));
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
          _totalRatingMeta,
          totalRating.isAcceptableOrUnknown(
              data['total_number_of_rating']!, _totalRatingMeta));
    }
    if (data.containsKey('average_5_percent_rating')) {
      context.handle(
          _average5PercentRatingMeta,
          average5PercentRating.isAcceptableOrUnknown(
              data['average_5_percent_rating']!, _average5PercentRatingMeta));
    }
    if (data.containsKey('average_4_percent_rating')) {
      context.handle(
          _average4PercentRatingMeta,
          average4PercentRating.isAcceptableOrUnknown(
              data['average_4_percent_rating']!, _average4PercentRatingMeta));
    }
    if (data.containsKey('average_3_percent_rating')) {
      context.handle(
          _average3PercentRatingMeta,
          average3PercentRating.isAcceptableOrUnknown(
              data['average_3_percent_rating']!, _average3PercentRatingMeta));
    }
    if (data.containsKey('average_2_percent_rating')) {
      context.handle(
          _average2PercentRatingMeta,
          average2PercentRating.isAcceptableOrUnknown(
              data['average_2_percent_rating']!, _average2PercentRatingMeta));
    }
    if (data.containsKey('average_1_percent_rating')) {
      context.handle(
          _average1PercentRatingMeta,
          average1PercentRating.isAcceptableOrUnknown(
              data['average_1_percent_rating']!, _average1PercentRatingMeta));
    }
    if (data.containsKey('bar_code')) {
      context.handle(_barCodeMeta,
          barCode.isAcceptableOrUnknown(data['bar_code']!, _barCodeMeta));
    }
    if (data.containsKey('qr_code')) {
      context.handle(_qrCodeMeta,
          qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('vat')) {
      context.handle(
          _vatMeta, vat.isAcceptableOrUnknown(data['vat']!, _vatMeta));
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
    if (data.containsKey('is_downladable')) {
      context.handle(
          _isDownloadableMeta,
          isDownloadable.isAcceptableOrUnknown(
              data['is_downladable']!, _isDownloadableMeta));
    }
    if (data.containsKey('downloaded_files')) {
      context.handle(
          _downloadedFilesMeta,
          downloadedFiles.isAcceptableOrUnknown(
              data['downloaded_files']!, _downloadedFilesMeta));
    }
    if (data.containsKey('special_price')) {
      context.handle(
          _specialPriceMeta,
          specialPrice.isAcceptableOrUnknown(
              data['special_price']!, _specialPriceMeta));
    }
    if (data.containsKey('related_products')) {
      context.handle(
          _relatedProductsMeta,
          relatedProducts.isAcceptableOrUnknown(
              data['related_products']!, _relatedProductsMeta));
    }
    if (data.containsKey('cross_sale_products')) {
      context.handle(
          _crossSaleProductsMeta,
          crossSaleProducts.isAcceptableOrUnknown(
              data['cross_sale_products']!, _crossSaleProductsMeta));
    }
    if (data.containsKey('up_sale_products')) {
      context.handle(
          _upSaleProductsMeta,
          upSaleProducts.isAcceptableOrUnknown(
              data['up_sale_products']!, _upSaleProductsMeta));
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
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('updated_by')) {
      context.handle(_updatedByMeta,
          updatedBy.isAcceptableOrUnknown(data['updated_by']!, _updatedByMeta));
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
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
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
      shortdescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}short_description']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      promotionPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}promotion_price']),
      advancePrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}advance_price']),
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
      manufactureDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}manufacture_date']),
      expireDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expire_date']),
      averageRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}average_rating']),
      totalRating: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_number_of_rating']),
      average5PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average_5_percent_rating']),
      average4PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average_4_percent_rating']),
      average3PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average_3_percent_rating']),
      average2PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average_2_percent_rating']),
      average1PercentRating: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}average_1_percent_rating']),
      barCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bar_code']),
      qrCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}qr_code']),
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax']),
      vat: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vat']),
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
          .read(DriftSqlType.bool, data['${effectivePrefix}is_downladable']),
      downloadedFiles: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}downloaded_files']),
      specialPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}special_price']),
      relatedProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}related_products']),
      crossSaleProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cross_sale_products']),
      upSaleProducts: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}up_sale_products']),
      files: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}files']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_by']),
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
  final String? id;
  final String? categoryId;
  final int? position;
  final String? label;
  final String? categoryLabel;
  final String? posLabel;
  final String? description;
  final String? shortdescription;
  final double? price;
  final double? promotionPrice;
  final double? advancePrice;
  final bool? enable;
  final String? warehouseLocation;
  final String? outletLocation;
  final String? rackLocation;
  final double? weight;
  final double? height;
  final String? manufactureCountry;
  final DateTime? manufactureDate;
  final DateTime? expireDate;
  final int? averageRating;
  final int? totalRating;
  final double? average5PercentRating;
  final double? average4PercentRating;
  final double? average3PercentRating;
  final double? average2PercentRating;
  final double? average1PercentRating;
  final String? barCode;
  final String? qrCode;
  final double? tax;
  final double? vat;
  final String? types;
  final String? tags;
  final String? sku;
  final int? inventory;
  final DateTime? newFrom;
  final DateTime? newTill;
  final bool? isDownloadable;
  final String? downloadedFiles;
  final double? specialPrice;
  final String? relatedProducts;
  final String? crossSaleProducts;
  final String? upSaleProducts;
  final String? files;
  final DateTime? createdAt;
  final String? createdBy;
  final DateTime? updatedAt;
  final String? updatedBy;
  final int? shelfLife;
  final int? minimumInventory;
  const ProductTableData(
      {this.sl,
      this.id,
      this.categoryId,
      this.position,
      this.label,
      this.categoryLabel,
      this.posLabel,
      this.description,
      this.shortdescription,
      this.price,
      this.promotionPrice,
      this.advancePrice,
      this.enable,
      this.warehouseLocation,
      this.outletLocation,
      this.rackLocation,
      this.weight,
      this.height,
      this.manufactureCountry,
      this.manufactureDate,
      this.expireDate,
      this.averageRating,
      this.totalRating,
      this.average5PercentRating,
      this.average4PercentRating,
      this.average3PercentRating,
      this.average2PercentRating,
      this.average1PercentRating,
      this.barCode,
      this.qrCode,
      this.tax,
      this.vat,
      this.types,
      this.tags,
      this.sku,
      this.inventory,
      this.newFrom,
      this.newTill,
      this.isDownloadable,
      this.downloadedFiles,
      this.specialPrice,
      this.relatedProducts,
      this.crossSaleProducts,
      this.upSaleProducts,
      this.files,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.updatedBy,
      this.shelfLife,
      this.minimumInventory});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
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
    if (!nullToAbsent || shortdescription != null) {
      map['short_description'] = Variable<String>(shortdescription);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || promotionPrice != null) {
      map['promotion_price'] = Variable<double>(promotionPrice);
    }
    if (!nullToAbsent || advancePrice != null) {
      map['advance_price'] = Variable<double>(advancePrice);
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
    if (!nullToAbsent || manufactureDate != null) {
      map['manufacture_date'] = Variable<DateTime>(manufactureDate);
    }
    if (!nullToAbsent || expireDate != null) {
      map['expire_date'] = Variable<DateTime>(expireDate);
    }
    if (!nullToAbsent || averageRating != null) {
      map['average_rating'] = Variable<int>(averageRating);
    }
    if (!nullToAbsent || totalRating != null) {
      map['total_number_of_rating'] = Variable<int>(totalRating);
    }
    if (!nullToAbsent || average5PercentRating != null) {
      map['average_5_percent_rating'] = Variable<double>(average5PercentRating);
    }
    if (!nullToAbsent || average4PercentRating != null) {
      map['average_4_percent_rating'] = Variable<double>(average4PercentRating);
    }
    if (!nullToAbsent || average3PercentRating != null) {
      map['average_3_percent_rating'] = Variable<double>(average3PercentRating);
    }
    if (!nullToAbsent || average2PercentRating != null) {
      map['average_2_percent_rating'] = Variable<double>(average2PercentRating);
    }
    if (!nullToAbsent || average1PercentRating != null) {
      map['average_1_percent_rating'] = Variable<double>(average1PercentRating);
    }
    if (!nullToAbsent || barCode != null) {
      map['bar_code'] = Variable<String>(barCode);
    }
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String>(qrCode);
    }
    if (!nullToAbsent || tax != null) {
      map['tax'] = Variable<double>(tax);
    }
    if (!nullToAbsent || vat != null) {
      map['vat'] = Variable<double>(vat);
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
      map['is_downladable'] = Variable<bool>(isDownloadable);
    }
    if (!nullToAbsent || downloadedFiles != null) {
      map['downloaded_files'] = Variable<String>(downloadedFiles);
    }
    if (!nullToAbsent || specialPrice != null) {
      map['special_price'] = Variable<double>(specialPrice);
    }
    if (!nullToAbsent || relatedProducts != null) {
      map['related_products'] = Variable<String>(relatedProducts);
    }
    if (!nullToAbsent || crossSaleProducts != null) {
      map['cross_sale_products'] = Variable<String>(crossSaleProducts);
    }
    if (!nullToAbsent || upSaleProducts != null) {
      map['up_sale_products'] = Variable<String>(upSaleProducts);
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
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || updatedBy != null) {
      map['updated_by'] = Variable<String>(updatedBy);
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
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
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
      shortdescription: shortdescription == null && nullToAbsent
          ? const Value.absent()
          : Value(shortdescription),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      promotionPrice: promotionPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(promotionPrice),
      advancePrice: advancePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(advancePrice),
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
      manufactureDate: manufactureDate == null && nullToAbsent
          ? const Value.absent()
          : Value(manufactureDate),
      expireDate: expireDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expireDate),
      averageRating: averageRating == null && nullToAbsent
          ? const Value.absent()
          : Value(averageRating),
      totalRating: totalRating == null && nullToAbsent
          ? const Value.absent()
          : Value(totalRating),
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
      barCode: barCode == null && nullToAbsent
          ? const Value.absent()
          : Value(barCode),
      qrCode:
          qrCode == null && nullToAbsent ? const Value.absent() : Value(qrCode),
      tax: tax == null && nullToAbsent ? const Value.absent() : Value(tax),
      vat: vat == null && nullToAbsent ? const Value.absent() : Value(vat),
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
      downloadedFiles: downloadedFiles == null && nullToAbsent
          ? const Value.absent()
          : Value(downloadedFiles),
      specialPrice: specialPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(specialPrice),
      relatedProducts: relatedProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(relatedProducts),
      crossSaleProducts: crossSaleProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(crossSaleProducts),
      upSaleProducts: upSaleProducts == null && nullToAbsent
          ? const Value.absent()
          : Value(upSaleProducts),
      files:
          files == null && nullToAbsent ? const Value.absent() : Value(files),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      createdBy: createdBy == null && nullToAbsent
          ? const Value.absent()
          : Value(createdBy),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      updatedBy: updatedBy == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedBy),
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
      id: serializer.fromJson<String?>(json['id']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      position: serializer.fromJson<int?>(json['position']),
      label: serializer.fromJson<String?>(json['label']),
      categoryLabel: serializer.fromJson<String?>(json['categoryLabel']),
      posLabel: serializer.fromJson<String?>(json['posLabel']),
      description: serializer.fromJson<String?>(json['description']),
      shortdescription: serializer.fromJson<String?>(json['shortdescription']),
      price: serializer.fromJson<double?>(json['price']),
      promotionPrice: serializer.fromJson<double?>(json['promotionPrice']),
      advancePrice: serializer.fromJson<double?>(json['advancePrice']),
      enable: serializer.fromJson<bool?>(json['enable']),
      warehouseLocation:
          serializer.fromJson<String?>(json['warehouseLocation']),
      outletLocation: serializer.fromJson<String?>(json['outletLocation']),
      rackLocation: serializer.fromJson<String?>(json['rackLocation']),
      weight: serializer.fromJson<double?>(json['weight']),
      height: serializer.fromJson<double?>(json['height']),
      manufactureCountry:
          serializer.fromJson<String?>(json['manufactureCountry']),
      manufactureDate: serializer.fromJson<DateTime?>(json['manufactureDate']),
      expireDate: serializer.fromJson<DateTime?>(json['expireDate']),
      averageRating: serializer.fromJson<int?>(json['averageRating']),
      totalRating: serializer.fromJson<int?>(json['totalRating']),
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
      barCode: serializer.fromJson<String?>(json['barCode']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
      tax: serializer.fromJson<double?>(json['tax']),
      vat: serializer.fromJson<double?>(json['vat']),
      types: serializer.fromJson<String?>(json['types']),
      tags: serializer.fromJson<String?>(json['tags']),
      sku: serializer.fromJson<String?>(json['sku']),
      inventory: serializer.fromJson<int?>(json['inventory']),
      newFrom: serializer.fromJson<DateTime?>(json['newFrom']),
      newTill: serializer.fromJson<DateTime?>(json['newTill']),
      isDownloadable: serializer.fromJson<bool?>(json['isDownloadable']),
      downloadedFiles: serializer.fromJson<String?>(json['downloadedFiles']),
      specialPrice: serializer.fromJson<double?>(json['specialPrice']),
      relatedProducts: serializer.fromJson<String?>(json['relatedProducts']),
      crossSaleProducts:
          serializer.fromJson<String?>(json['crossSaleProducts']),
      upSaleProducts: serializer.fromJson<String?>(json['upSaleProducts']),
      files: serializer.fromJson<String?>(json['files']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      shelfLife: serializer.fromJson<int?>(json['shelfLife']),
      minimumInventory: serializer.fromJson<int?>(json['minimumInventory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'categoryId': serializer.toJson<String?>(categoryId),
      'position': serializer.toJson<int?>(position),
      'label': serializer.toJson<String?>(label),
      'categoryLabel': serializer.toJson<String?>(categoryLabel),
      'posLabel': serializer.toJson<String?>(posLabel),
      'description': serializer.toJson<String?>(description),
      'shortdescription': serializer.toJson<String?>(shortdescription),
      'price': serializer.toJson<double?>(price),
      'promotionPrice': serializer.toJson<double?>(promotionPrice),
      'advancePrice': serializer.toJson<double?>(advancePrice),
      'enable': serializer.toJson<bool?>(enable),
      'warehouseLocation': serializer.toJson<String?>(warehouseLocation),
      'outletLocation': serializer.toJson<String?>(outletLocation),
      'rackLocation': serializer.toJson<String?>(rackLocation),
      'weight': serializer.toJson<double?>(weight),
      'height': serializer.toJson<double?>(height),
      'manufactureCountry': serializer.toJson<String?>(manufactureCountry),
      'manufactureDate': serializer.toJson<DateTime?>(manufactureDate),
      'expireDate': serializer.toJson<DateTime?>(expireDate),
      'averageRating': serializer.toJson<int?>(averageRating),
      'totalRating': serializer.toJson<int?>(totalRating),
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
      'barCode': serializer.toJson<String?>(barCode),
      'qrCode': serializer.toJson<String?>(qrCode),
      'tax': serializer.toJson<double?>(tax),
      'vat': serializer.toJson<double?>(vat),
      'types': serializer.toJson<String?>(types),
      'tags': serializer.toJson<String?>(tags),
      'sku': serializer.toJson<String?>(sku),
      'inventory': serializer.toJson<int?>(inventory),
      'newFrom': serializer.toJson<DateTime?>(newFrom),
      'newTill': serializer.toJson<DateTime?>(newTill),
      'isDownloadable': serializer.toJson<bool?>(isDownloadable),
      'downloadedFiles': serializer.toJson<String?>(downloadedFiles),
      'specialPrice': serializer.toJson<double?>(specialPrice),
      'relatedProducts': serializer.toJson<String?>(relatedProducts),
      'crossSaleProducts': serializer.toJson<String?>(crossSaleProducts),
      'upSaleProducts': serializer.toJson<String?>(upSaleProducts),
      'files': serializer.toJson<String?>(files),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'shelfLife': serializer.toJson<int?>(shelfLife),
      'minimumInventory': serializer.toJson<int?>(minimumInventory),
    };
  }

  ProductTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> categoryId = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<String?> label = const Value.absent(),
          Value<String?> categoryLabel = const Value.absent(),
          Value<String?> posLabel = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> shortdescription = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<double?> promotionPrice = const Value.absent(),
          Value<double?> advancePrice = const Value.absent(),
          Value<bool?> enable = const Value.absent(),
          Value<String?> warehouseLocation = const Value.absent(),
          Value<String?> outletLocation = const Value.absent(),
          Value<String?> rackLocation = const Value.absent(),
          Value<double?> weight = const Value.absent(),
          Value<double?> height = const Value.absent(),
          Value<String?> manufactureCountry = const Value.absent(),
          Value<DateTime?> manufactureDate = const Value.absent(),
          Value<DateTime?> expireDate = const Value.absent(),
          Value<int?> averageRating = const Value.absent(),
          Value<int?> totalRating = const Value.absent(),
          Value<double?> average5PercentRating = const Value.absent(),
          Value<double?> average4PercentRating = const Value.absent(),
          Value<double?> average3PercentRating = const Value.absent(),
          Value<double?> average2PercentRating = const Value.absent(),
          Value<double?> average1PercentRating = const Value.absent(),
          Value<String?> barCode = const Value.absent(),
          Value<String?> qrCode = const Value.absent(),
          Value<double?> tax = const Value.absent(),
          Value<double?> vat = const Value.absent(),
          Value<String?> types = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          Value<String?> sku = const Value.absent(),
          Value<int?> inventory = const Value.absent(),
          Value<DateTime?> newFrom = const Value.absent(),
          Value<DateTime?> newTill = const Value.absent(),
          Value<bool?> isDownloadable = const Value.absent(),
          Value<String?> downloadedFiles = const Value.absent(),
          Value<double?> specialPrice = const Value.absent(),
          Value<String?> relatedProducts = const Value.absent(),
          Value<String?> crossSaleProducts = const Value.absent(),
          Value<String?> upSaleProducts = const Value.absent(),
          Value<String?> files = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<int?> shelfLife = const Value.absent(),
          Value<int?> minimumInventory = const Value.absent()}) =>
      ProductTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        position: position.present ? position.value : this.position,
        label: label.present ? label.value : this.label,
        categoryLabel:
            categoryLabel.present ? categoryLabel.value : this.categoryLabel,
        posLabel: posLabel.present ? posLabel.value : this.posLabel,
        description: description.present ? description.value : this.description,
        shortdescription: shortdescription.present
            ? shortdescription.value
            : this.shortdescription,
        price: price.present ? price.value : this.price,
        promotionPrice:
            promotionPrice.present ? promotionPrice.value : this.promotionPrice,
        advancePrice:
            advancePrice.present ? advancePrice.value : this.advancePrice,
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
        manufactureDate: manufactureDate.present
            ? manufactureDate.value
            : this.manufactureDate,
        expireDate: expireDate.present ? expireDate.value : this.expireDate,
        averageRating:
            averageRating.present ? averageRating.value : this.averageRating,
        totalRating: totalRating.present ? totalRating.value : this.totalRating,
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
        barCode: barCode.present ? barCode.value : this.barCode,
        qrCode: qrCode.present ? qrCode.value : this.qrCode,
        tax: tax.present ? tax.value : this.tax,
        vat: vat.present ? vat.value : this.vat,
        types: types.present ? types.value : this.types,
        tags: tags.present ? tags.value : this.tags,
        sku: sku.present ? sku.value : this.sku,
        inventory: inventory.present ? inventory.value : this.inventory,
        newFrom: newFrom.present ? newFrom.value : this.newFrom,
        newTill: newTill.present ? newTill.value : this.newTill,
        isDownloadable:
            isDownloadable.present ? isDownloadable.value : this.isDownloadable,
        downloadedFiles: downloadedFiles.present
            ? downloadedFiles.value
            : this.downloadedFiles,
        specialPrice:
            specialPrice.present ? specialPrice.value : this.specialPrice,
        relatedProducts: relatedProducts.present
            ? relatedProducts.value
            : this.relatedProducts,
        crossSaleProducts: crossSaleProducts.present
            ? crossSaleProducts.value
            : this.crossSaleProducts,
        upSaleProducts:
            upSaleProducts.present ? upSaleProducts.value : this.upSaleProducts,
        files: files.present ? files.value : this.files,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        shelfLife: shelfLife.present ? shelfLife.value : this.shelfLife,
        minimumInventory: minimumInventory.present
            ? minimumInventory.value
            : this.minimumInventory,
      );
  @override
  String toString() {
    return (StringBuffer('ProductTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('position: $position, ')
          ..write('label: $label, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('posLabel: $posLabel, ')
          ..write('description: $description, ')
          ..write('shortdescription: $shortdescription, ')
          ..write('price: $price, ')
          ..write('promotionPrice: $promotionPrice, ')
          ..write('advancePrice: $advancePrice, ')
          ..write('enable: $enable, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('manufactureCountry: $manufactureCountry, ')
          ..write('manufactureDate: $manufactureDate, ')
          ..write('expireDate: $expireDate, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalRating: $totalRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating, ')
          ..write('barCode: $barCode, ')
          ..write('qrCode: $qrCode, ')
          ..write('tax: $tax, ')
          ..write('vat: $vat, ')
          ..write('types: $types, ')
          ..write('tags: $tags, ')
          ..write('sku: $sku, ')
          ..write('inventory: $inventory, ')
          ..write('newFrom: $newFrom, ')
          ..write('newTill: $newTill, ')
          ..write('isDownloadable: $isDownloadable, ')
          ..write('downloadedFiles: $downloadedFiles, ')
          ..write('specialPrice: $specialPrice, ')
          ..write('relatedProducts: $relatedProducts, ')
          ..write('crossSaleProducts: $crossSaleProducts, ')
          ..write('upSaleProducts: $upSaleProducts, ')
          ..write('files: $files, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        id,
        categoryId,
        position,
        label,
        categoryLabel,
        posLabel,
        description,
        shortdescription,
        price,
        promotionPrice,
        advancePrice,
        enable,
        warehouseLocation,
        outletLocation,
        rackLocation,
        weight,
        height,
        manufactureCountry,
        manufactureDate,
        expireDate,
        averageRating,
        totalRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating,
        barCode,
        qrCode,
        tax,
        vat,
        types,
        tags,
        sku,
        inventory,
        newFrom,
        newTill,
        isDownloadable,
        downloadedFiles,
        specialPrice,
        relatedProducts,
        crossSaleProducts,
        upSaleProducts,
        files,
        createdAt,
        createdBy,
        updatedAt,
        updatedBy,
        shelfLife,
        minimumInventory
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.position == this.position &&
          other.label == this.label &&
          other.categoryLabel == this.categoryLabel &&
          other.posLabel == this.posLabel &&
          other.description == this.description &&
          other.shortdescription == this.shortdescription &&
          other.price == this.price &&
          other.promotionPrice == this.promotionPrice &&
          other.advancePrice == this.advancePrice &&
          other.enable == this.enable &&
          other.warehouseLocation == this.warehouseLocation &&
          other.outletLocation == this.outletLocation &&
          other.rackLocation == this.rackLocation &&
          other.weight == this.weight &&
          other.height == this.height &&
          other.manufactureCountry == this.manufactureCountry &&
          other.manufactureDate == this.manufactureDate &&
          other.expireDate == this.expireDate &&
          other.averageRating == this.averageRating &&
          other.totalRating == this.totalRating &&
          other.average5PercentRating == this.average5PercentRating &&
          other.average4PercentRating == this.average4PercentRating &&
          other.average3PercentRating == this.average3PercentRating &&
          other.average2PercentRating == this.average2PercentRating &&
          other.average1PercentRating == this.average1PercentRating &&
          other.barCode == this.barCode &&
          other.qrCode == this.qrCode &&
          other.tax == this.tax &&
          other.vat == this.vat &&
          other.types == this.types &&
          other.tags == this.tags &&
          other.sku == this.sku &&
          other.inventory == this.inventory &&
          other.newFrom == this.newFrom &&
          other.newTill == this.newTill &&
          other.isDownloadable == this.isDownloadable &&
          other.downloadedFiles == this.downloadedFiles &&
          other.specialPrice == this.specialPrice &&
          other.relatedProducts == this.relatedProducts &&
          other.crossSaleProducts == this.crossSaleProducts &&
          other.upSaleProducts == this.upSaleProducts &&
          other.files == this.files &&
          other.createdAt == this.createdAt &&
          other.createdBy == this.createdBy &&
          other.updatedAt == this.updatedAt &&
          other.updatedBy == this.updatedBy &&
          other.shelfLife == this.shelfLife &&
          other.minimumInventory == this.minimumInventory);
}

class ProductTableCompanion extends UpdateCompanion<ProductTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> categoryId;
  final Value<int?> position;
  final Value<String?> label;
  final Value<String?> categoryLabel;
  final Value<String?> posLabel;
  final Value<String?> description;
  final Value<String?> shortdescription;
  final Value<double?> price;
  final Value<double?> promotionPrice;
  final Value<double?> advancePrice;
  final Value<bool?> enable;
  final Value<String?> warehouseLocation;
  final Value<String?> outletLocation;
  final Value<String?> rackLocation;
  final Value<double?> weight;
  final Value<double?> height;
  final Value<String?> manufactureCountry;
  final Value<DateTime?> manufactureDate;
  final Value<DateTime?> expireDate;
  final Value<int?> averageRating;
  final Value<int?> totalRating;
  final Value<double?> average5PercentRating;
  final Value<double?> average4PercentRating;
  final Value<double?> average3PercentRating;
  final Value<double?> average2PercentRating;
  final Value<double?> average1PercentRating;
  final Value<String?> barCode;
  final Value<String?> qrCode;
  final Value<double?> tax;
  final Value<double?> vat;
  final Value<String?> types;
  final Value<String?> tags;
  final Value<String?> sku;
  final Value<int?> inventory;
  final Value<DateTime?> newFrom;
  final Value<DateTime?> newTill;
  final Value<bool?> isDownloadable;
  final Value<String?> downloadedFiles;
  final Value<double?> specialPrice;
  final Value<String?> relatedProducts;
  final Value<String?> crossSaleProducts;
  final Value<String?> upSaleProducts;
  final Value<String?> files;
  final Value<DateTime?> createdAt;
  final Value<String?> createdBy;
  final Value<DateTime?> updatedAt;
  final Value<String?> updatedBy;
  final Value<int?> shelfLife;
  final Value<int?> minimumInventory;
  const ProductTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.position = const Value.absent(),
    this.label = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.posLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortdescription = const Value.absent(),
    this.price = const Value.absent(),
    this.promotionPrice = const Value.absent(),
    this.advancePrice = const Value.absent(),
    this.enable = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.manufactureCountry = const Value.absent(),
    this.manufactureDate = const Value.absent(),
    this.expireDate = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
    this.barCode = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.tax = const Value.absent(),
    this.vat = const Value.absent(),
    this.types = const Value.absent(),
    this.tags = const Value.absent(),
    this.sku = const Value.absent(),
    this.inventory = const Value.absent(),
    this.newFrom = const Value.absent(),
    this.newTill = const Value.absent(),
    this.isDownloadable = const Value.absent(),
    this.downloadedFiles = const Value.absent(),
    this.specialPrice = const Value.absent(),
    this.relatedProducts = const Value.absent(),
    this.crossSaleProducts = const Value.absent(),
    this.upSaleProducts = const Value.absent(),
    this.files = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
  });
  ProductTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.position = const Value.absent(),
    this.label = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.posLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortdescription = const Value.absent(),
    this.price = const Value.absent(),
    this.promotionPrice = const Value.absent(),
    this.advancePrice = const Value.absent(),
    this.enable = const Value.absent(),
    this.warehouseLocation = const Value.absent(),
    this.outletLocation = const Value.absent(),
    this.rackLocation = const Value.absent(),
    this.weight = const Value.absent(),
    this.height = const Value.absent(),
    this.manufactureCountry = const Value.absent(),
    this.manufactureDate = const Value.absent(),
    this.expireDate = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
    this.barCode = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.tax = const Value.absent(),
    this.vat = const Value.absent(),
    this.types = const Value.absent(),
    this.tags = const Value.absent(),
    this.sku = const Value.absent(),
    this.inventory = const Value.absent(),
    this.newFrom = const Value.absent(),
    this.newTill = const Value.absent(),
    this.isDownloadable = const Value.absent(),
    this.downloadedFiles = const Value.absent(),
    this.specialPrice = const Value.absent(),
    this.relatedProducts = const Value.absent(),
    this.crossSaleProducts = const Value.absent(),
    this.upSaleProducts = const Value.absent(),
    this.files = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.shelfLife = const Value.absent(),
    this.minimumInventory = const Value.absent(),
  });
  static Insertable<ProductTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? categoryId,
    Expression<int>? position,
    Expression<String>? label,
    Expression<String>? categoryLabel,
    Expression<String>? posLabel,
    Expression<String>? description,
    Expression<String>? shortdescription,
    Expression<double>? price,
    Expression<double>? promotionPrice,
    Expression<double>? advancePrice,
    Expression<bool>? enable,
    Expression<String>? warehouseLocation,
    Expression<String>? outletLocation,
    Expression<String>? rackLocation,
    Expression<double>? weight,
    Expression<double>? height,
    Expression<String>? manufactureCountry,
    Expression<DateTime>? manufactureDate,
    Expression<DateTime>? expireDate,
    Expression<int>? averageRating,
    Expression<int>? totalRating,
    Expression<double>? average5PercentRating,
    Expression<double>? average4PercentRating,
    Expression<double>? average3PercentRating,
    Expression<double>? average2PercentRating,
    Expression<double>? average1PercentRating,
    Expression<String>? barCode,
    Expression<String>? qrCode,
    Expression<double>? tax,
    Expression<double>? vat,
    Expression<String>? types,
    Expression<String>? tags,
    Expression<String>? sku,
    Expression<int>? inventory,
    Expression<DateTime>? newFrom,
    Expression<DateTime>? newTill,
    Expression<bool>? isDownloadable,
    Expression<String>? downloadedFiles,
    Expression<double>? specialPrice,
    Expression<String>? relatedProducts,
    Expression<String>? crossSaleProducts,
    Expression<String>? upSaleProducts,
    Expression<String>? files,
    Expression<DateTime>? createdAt,
    Expression<String>? createdBy,
    Expression<DateTime>? updatedAt,
    Expression<String>? updatedBy,
    Expression<int>? shelfLife,
    Expression<int>? minimumInventory,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (position != null) 'position': position,
      if (label != null) 'label': label,
      if (categoryLabel != null) 'category_label': categoryLabel,
      if (posLabel != null) 'pos_label': posLabel,
      if (description != null) 'description': description,
      if (shortdescription != null) 'short_description': shortdescription,
      if (price != null) 'price': price,
      if (promotionPrice != null) 'promotion_price': promotionPrice,
      if (advancePrice != null) 'advance_price': advancePrice,
      if (enable != null) 'enable': enable,
      if (warehouseLocation != null) 'warehouse_location': warehouseLocation,
      if (outletLocation != null) 'outlet_location': outletLocation,
      if (rackLocation != null) 'rack_location': rackLocation,
      if (weight != null) 'weight': weight,
      if (height != null) 'height': height,
      if (manufactureCountry != null) 'manufacture_country': manufactureCountry,
      if (manufactureDate != null) 'manufacture_date': manufactureDate,
      if (expireDate != null) 'expire_date': expireDate,
      if (averageRating != null) 'average_rating': averageRating,
      if (totalRating != null) 'total_number_of_rating': totalRating,
      if (average5PercentRating != null)
        'average_5_percent_rating': average5PercentRating,
      if (average4PercentRating != null)
        'average_4_percent_rating': average4PercentRating,
      if (average3PercentRating != null)
        'average_3_percent_rating': average3PercentRating,
      if (average2PercentRating != null)
        'average_2_percent_rating': average2PercentRating,
      if (average1PercentRating != null)
        'average_1_percent_rating': average1PercentRating,
      if (barCode != null) 'bar_code': barCode,
      if (qrCode != null) 'qr_code': qrCode,
      if (tax != null) 'tax': tax,
      if (vat != null) 'vat': vat,
      if (types != null) 'types': types,
      if (tags != null) 'tags': tags,
      if (sku != null) 'sku': sku,
      if (inventory != null) 'inventory': inventory,
      if (newFrom != null) 'new_from': newFrom,
      if (newTill != null) 'new_till': newTill,
      if (isDownloadable != null) 'is_downladable': isDownloadable,
      if (downloadedFiles != null) 'downloaded_files': downloadedFiles,
      if (specialPrice != null) 'special_price': specialPrice,
      if (relatedProducts != null) 'related_products': relatedProducts,
      if (crossSaleProducts != null) 'cross_sale_products': crossSaleProducts,
      if (upSaleProducts != null) 'up_sale_products': upSaleProducts,
      if (files != null) 'files': files,
      if (createdAt != null) 'created_at': createdAt,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (updatedBy != null) 'updated_by': updatedBy,
      if (shelfLife != null) 'shelf_life': shelfLife,
      if (minimumInventory != null) 'minimum_inventory': minimumInventory,
    });
  }

  ProductTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? categoryId,
      Value<int?>? position,
      Value<String?>? label,
      Value<String?>? categoryLabel,
      Value<String?>? posLabel,
      Value<String?>? description,
      Value<String?>? shortdescription,
      Value<double?>? price,
      Value<double?>? promotionPrice,
      Value<double?>? advancePrice,
      Value<bool?>? enable,
      Value<String?>? warehouseLocation,
      Value<String?>? outletLocation,
      Value<String?>? rackLocation,
      Value<double?>? weight,
      Value<double?>? height,
      Value<String?>? manufactureCountry,
      Value<DateTime?>? manufactureDate,
      Value<DateTime?>? expireDate,
      Value<int?>? averageRating,
      Value<int?>? totalRating,
      Value<double?>? average5PercentRating,
      Value<double?>? average4PercentRating,
      Value<double?>? average3PercentRating,
      Value<double?>? average2PercentRating,
      Value<double?>? average1PercentRating,
      Value<String?>? barCode,
      Value<String?>? qrCode,
      Value<double?>? tax,
      Value<double?>? vat,
      Value<String?>? types,
      Value<String?>? tags,
      Value<String?>? sku,
      Value<int?>? inventory,
      Value<DateTime?>? newFrom,
      Value<DateTime?>? newTill,
      Value<bool?>? isDownloadable,
      Value<String?>? downloadedFiles,
      Value<double?>? specialPrice,
      Value<String?>? relatedProducts,
      Value<String?>? crossSaleProducts,
      Value<String?>? upSaleProducts,
      Value<String?>? files,
      Value<DateTime?>? createdAt,
      Value<String?>? createdBy,
      Value<DateTime?>? updatedAt,
      Value<String?>? updatedBy,
      Value<int?>? shelfLife,
      Value<int?>? minimumInventory}) {
    return ProductTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      position: position ?? this.position,
      label: label ?? this.label,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      posLabel: posLabel ?? this.posLabel,
      description: description ?? this.description,
      shortdescription: shortdescription ?? this.shortdescription,
      price: price ?? this.price,
      promotionPrice: promotionPrice ?? this.promotionPrice,
      advancePrice: advancePrice ?? this.advancePrice,
      enable: enable ?? this.enable,
      warehouseLocation: warehouseLocation ?? this.warehouseLocation,
      outletLocation: outletLocation ?? this.outletLocation,
      rackLocation: rackLocation ?? this.rackLocation,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      manufactureCountry: manufactureCountry ?? this.manufactureCountry,
      manufactureDate: manufactureDate ?? this.manufactureDate,
      expireDate: expireDate ?? this.expireDate,
      averageRating: averageRating ?? this.averageRating,
      totalRating: totalRating ?? this.totalRating,
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
      barCode: barCode ?? this.barCode,
      qrCode: qrCode ?? this.qrCode,
      tax: tax ?? this.tax,
      vat: vat ?? this.vat,
      types: types ?? this.types,
      tags: tags ?? this.tags,
      sku: sku ?? this.sku,
      inventory: inventory ?? this.inventory,
      newFrom: newFrom ?? this.newFrom,
      newTill: newTill ?? this.newTill,
      isDownloadable: isDownloadable ?? this.isDownloadable,
      downloadedFiles: downloadedFiles ?? this.downloadedFiles,
      specialPrice: specialPrice ?? this.specialPrice,
      relatedProducts: relatedProducts ?? this.relatedProducts,
      crossSaleProducts: crossSaleProducts ?? this.crossSaleProducts,
      upSaleProducts: upSaleProducts ?? this.upSaleProducts,
      files: files ?? this.files,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      updatedBy: updatedBy ?? this.updatedBy,
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
    if (id.present) {
      map['id'] = Variable<String>(id.value);
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
    if (shortdescription.present) {
      map['short_description'] = Variable<String>(shortdescription.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (promotionPrice.present) {
      map['promotion_price'] = Variable<double>(promotionPrice.value);
    }
    if (advancePrice.present) {
      map['advance_price'] = Variable<double>(advancePrice.value);
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
    if (manufactureDate.present) {
      map['manufacture_date'] = Variable<DateTime>(manufactureDate.value);
    }
    if (expireDate.present) {
      map['expire_date'] = Variable<DateTime>(expireDate.value);
    }
    if (averageRating.present) {
      map['average_rating'] = Variable<int>(averageRating.value);
    }
    if (totalRating.present) {
      map['total_number_of_rating'] = Variable<int>(totalRating.value);
    }
    if (average5PercentRating.present) {
      map['average_5_percent_rating'] =
          Variable<double>(average5PercentRating.value);
    }
    if (average4PercentRating.present) {
      map['average_4_percent_rating'] =
          Variable<double>(average4PercentRating.value);
    }
    if (average3PercentRating.present) {
      map['average_3_percent_rating'] =
          Variable<double>(average3PercentRating.value);
    }
    if (average2PercentRating.present) {
      map['average_2_percent_rating'] =
          Variable<double>(average2PercentRating.value);
    }
    if (average1PercentRating.present) {
      map['average_1_percent_rating'] =
          Variable<double>(average1PercentRating.value);
    }
    if (barCode.present) {
      map['bar_code'] = Variable<String>(barCode.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String>(qrCode.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (vat.present) {
      map['vat'] = Variable<double>(vat.value);
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
      map['is_downladable'] = Variable<bool>(isDownloadable.value);
    }
    if (downloadedFiles.present) {
      map['downloaded_files'] = Variable<String>(downloadedFiles.value);
    }
    if (specialPrice.present) {
      map['special_price'] = Variable<double>(specialPrice.value);
    }
    if (relatedProducts.present) {
      map['related_products'] = Variable<String>(relatedProducts.value);
    }
    if (crossSaleProducts.present) {
      map['cross_sale_products'] = Variable<String>(crossSaleProducts.value);
    }
    if (upSaleProducts.present) {
      map['up_sale_products'] = Variable<String>(upSaleProducts.value);
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
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (updatedBy.present) {
      map['updated_by'] = Variable<String>(updatedBy.value);
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
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('position: $position, ')
          ..write('label: $label, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('posLabel: $posLabel, ')
          ..write('description: $description, ')
          ..write('shortdescription: $shortdescription, ')
          ..write('price: $price, ')
          ..write('promotionPrice: $promotionPrice, ')
          ..write('advancePrice: $advancePrice, ')
          ..write('enable: $enable, ')
          ..write('warehouseLocation: $warehouseLocation, ')
          ..write('outletLocation: $outletLocation, ')
          ..write('rackLocation: $rackLocation, ')
          ..write('weight: $weight, ')
          ..write('height: $height, ')
          ..write('manufactureCountry: $manufactureCountry, ')
          ..write('manufactureDate: $manufactureDate, ')
          ..write('expireDate: $expireDate, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalRating: $totalRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating, ')
          ..write('barCode: $barCode, ')
          ..write('qrCode: $qrCode, ')
          ..write('tax: $tax, ')
          ..write('vat: $vat, ')
          ..write('types: $types, ')
          ..write('tags: $tags, ')
          ..write('sku: $sku, ')
          ..write('inventory: $inventory, ')
          ..write('newFrom: $newFrom, ')
          ..write('newTill: $newTill, ')
          ..write('isDownloadable: $isDownloadable, ')
          ..write('downloadedFiles: $downloadedFiles, ')
          ..write('specialPrice: $specialPrice, ')
          ..write('relatedProducts: $relatedProducts, ')
          ..write('crossSaleProducts: $crossSaleProducts, ')
          ..write('upSaleProducts: $upSaleProducts, ')
          ..write('files: $files, ')
          ..write('createdAt: $createdAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('shelfLife: $shelfLife, ')
          ..write('minimumInventory: $minimumInventory')
          ..write(')'))
        .toString();
  }
}

class $PaymentDetailTableTable extends PaymentDetailTable
    with TableInfo<$PaymentDetailTableTable, PaymentDetailTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentDetailTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'payment_detail_id', aliasedName, true,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
      'order_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES order_table (sl)'));
  static const VerificationMeta _paymentTypeMeta =
      const VerificationMeta('paymentType');
  @override
  late final GeneratedColumn<String> paymentType = GeneratedColumn<String>(
      'payment_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _digitalPaymentTypeMeta =
      const VerificationMeta('digitalPaymentType');
  @override
  late final GeneratedColumn<String> digitalPaymentType =
      GeneratedColumn<String>('digital_payment_type', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _transactionDetailMeta =
      const VerificationMeta('transactionDetail');
  @override
  late final GeneratedColumn<String> transactionDetail =
      GeneratedColumn<String>('transaction_detail', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, orderId, paymentType, digitalPaymentType, transactionDetail, amount];
  @override
  String get aliasedName => _alias ?? 'payment_detail_table';
  @override
  String get actualTableName => 'payment_detail_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PaymentDetailTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('payment_detail_id')) {
      context.handle(_idMeta,
          id.isAcceptableOrUnknown(data['payment_detail_id']!, _idMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    }
    if (data.containsKey('payment_type')) {
      context.handle(
          _paymentTypeMeta,
          paymentType.isAcceptableOrUnknown(
              data['payment_type']!, _paymentTypeMeta));
    }
    if (data.containsKey('digital_payment_type')) {
      context.handle(
          _digitalPaymentTypeMeta,
          digitalPaymentType.isAcceptableOrUnknown(
              data['digital_payment_type']!, _digitalPaymentTypeMeta));
    }
    if (data.containsKey('transaction_detail')) {
      context.handle(
          _transactionDetailMeta,
          transactionDetail.isAcceptableOrUnknown(
              data['transaction_detail']!, _transactionDetailMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PaymentDetailTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentDetailTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_detail_id']),
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_id']),
      paymentType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_type']),
      digitalPaymentType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}digital_payment_type']),
      transactionDetail: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}transaction_detail']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
    );
  }

  @override
  $PaymentDetailTableTable createAlias(String alias) {
    return $PaymentDetailTableTable(attachedDatabase, alias);
  }
}

class PaymentDetailTableData extends DataClass
    implements Insertable<PaymentDetailTableData> {
  final int? id;
  final int? orderId;
  final String? paymentType;
  final String? digitalPaymentType;
  final String? transactionDetail;
  final double? amount;
  const PaymentDetailTableData(
      {this.id,
      this.orderId,
      this.paymentType,
      this.digitalPaymentType,
      this.transactionDetail,
      this.amount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['payment_detail_id'] = Variable<int>(id);
    }
    if (!nullToAbsent || orderId != null) {
      map['order_id'] = Variable<int>(orderId);
    }
    if (!nullToAbsent || paymentType != null) {
      map['payment_type'] = Variable<String>(paymentType);
    }
    if (!nullToAbsent || digitalPaymentType != null) {
      map['digital_payment_type'] = Variable<String>(digitalPaymentType);
    }
    if (!nullToAbsent || transactionDetail != null) {
      map['transaction_detail'] = Variable<String>(transactionDetail);
    }
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    return map;
  }

  PaymentDetailTableCompanion toCompanion(bool nullToAbsent) {
    return PaymentDetailTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      orderId: orderId == null && nullToAbsent
          ? const Value.absent()
          : Value(orderId),
      paymentType: paymentType == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentType),
      digitalPaymentType: digitalPaymentType == null && nullToAbsent
          ? const Value.absent()
          : Value(digitalPaymentType),
      transactionDetail: transactionDetail == null && nullToAbsent
          ? const Value.absent()
          : Value(transactionDetail),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
    );
  }

  factory PaymentDetailTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentDetailTableData(
      id: serializer.fromJson<int?>(json['id']),
      orderId: serializer.fromJson<int?>(json['orderId']),
      paymentType: serializer.fromJson<String?>(json['paymentType']),
      digitalPaymentType:
          serializer.fromJson<String?>(json['digitalPaymentType']),
      transactionDetail:
          serializer.fromJson<String?>(json['transactionDetail']),
      amount: serializer.fromJson<double?>(json['amount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int?>(id),
      'orderId': serializer.toJson<int?>(orderId),
      'paymentType': serializer.toJson<String?>(paymentType),
      'digitalPaymentType': serializer.toJson<String?>(digitalPaymentType),
      'transactionDetail': serializer.toJson<String?>(transactionDetail),
      'amount': serializer.toJson<double?>(amount),
    };
  }

  PaymentDetailTableData copyWith(
          {Value<int?> id = const Value.absent(),
          Value<int?> orderId = const Value.absent(),
          Value<String?> paymentType = const Value.absent(),
          Value<String?> digitalPaymentType = const Value.absent(),
          Value<String?> transactionDetail = const Value.absent(),
          Value<double?> amount = const Value.absent()}) =>
      PaymentDetailTableData(
        id: id.present ? id.value : this.id,
        orderId: orderId.present ? orderId.value : this.orderId,
        paymentType: paymentType.present ? paymentType.value : this.paymentType,
        digitalPaymentType: digitalPaymentType.present
            ? digitalPaymentType.value
            : this.digitalPaymentType,
        transactionDetail: transactionDetail.present
            ? transactionDetail.value
            : this.transactionDetail,
        amount: amount.present ? amount.value : this.amount,
      );
  @override
  String toString() {
    return (StringBuffer('PaymentDetailTableData(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('paymentType: $paymentType, ')
          ..write('digitalPaymentType: $digitalPaymentType, ')
          ..write('transactionDetail: $transactionDetail, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, orderId, paymentType, digitalPaymentType, transactionDetail, amount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentDetailTableData &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.paymentType == this.paymentType &&
          other.digitalPaymentType == this.digitalPaymentType &&
          other.transactionDetail == this.transactionDetail &&
          other.amount == this.amount);
}

class PaymentDetailTableCompanion
    extends UpdateCompanion<PaymentDetailTableData> {
  final Value<int?> id;
  final Value<int?> orderId;
  final Value<String?> paymentType;
  final Value<String?> digitalPaymentType;
  final Value<String?> transactionDetail;
  final Value<double?> amount;
  const PaymentDetailTableCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.digitalPaymentType = const Value.absent(),
    this.transactionDetail = const Value.absent(),
    this.amount = const Value.absent(),
  });
  PaymentDetailTableCompanion.insert({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.digitalPaymentType = const Value.absent(),
    this.transactionDetail = const Value.absent(),
    this.amount = const Value.absent(),
  });
  static Insertable<PaymentDetailTableData> custom({
    Expression<int>? id,
    Expression<int>? orderId,
    Expression<String>? paymentType,
    Expression<String>? digitalPaymentType,
    Expression<String>? transactionDetail,
    Expression<double>? amount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'payment_detail_id': id,
      if (orderId != null) 'order_id': orderId,
      if (paymentType != null) 'payment_type': paymentType,
      if (digitalPaymentType != null)
        'digital_payment_type': digitalPaymentType,
      if (transactionDetail != null) 'transaction_detail': transactionDetail,
      if (amount != null) 'amount': amount,
    });
  }

  PaymentDetailTableCompanion copyWith(
      {Value<int?>? id,
      Value<int?>? orderId,
      Value<String?>? paymentType,
      Value<String?>? digitalPaymentType,
      Value<String?>? transactionDetail,
      Value<double?>? amount}) {
    return PaymentDetailTableCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      paymentType: paymentType ?? this.paymentType,
      digitalPaymentType: digitalPaymentType ?? this.digitalPaymentType,
      transactionDetail: transactionDetail ?? this.transactionDetail,
      amount: amount ?? this.amount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['payment_detail_id'] = Variable<int>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    if (paymentType.present) {
      map['payment_type'] = Variable<String>(paymentType.value);
    }
    if (digitalPaymentType.present) {
      map['digital_payment_type'] = Variable<String>(digitalPaymentType.value);
    }
    if (transactionDetail.present) {
      map['transaction_detail'] = Variable<String>(transactionDetail.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentDetailTableCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('paymentType: $paymentType, ')
          ..write('digitalPaymentType: $digitalPaymentType, ')
          ..write('transactionDetail: $transactionDetail, ')
          ..write('amount: $amount')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ConfigTableTable configTable = $ConfigTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $ItemTableTable itemTable = $ItemTableTable(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  late final $PaymentDetailTableTable paymentDetailTable =
      $PaymentDetailTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        configTable,
        categoryTable,
        orderTable,
        itemTable,
        productTable,
        paymentDetailTable
      ];
}
