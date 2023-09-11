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
  static const VerificationMeta _productsMeta =
      const VerificationMeta('products');
  @override
  late final GeneratedColumn<String> products = GeneratedColumn<String>(
      'products', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imagesMeta = const VerificationMeta('images');
  @override
  late final GeneratedColumn<String> images = GeneratedColumn<String>(
      'images', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
      'label', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isExpendMeta =
      const VerificationMeta('isExpend');
  @override
  late final GeneratedColumn<bool> isExpend = GeneratedColumn<bool>(
      'is_expend', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_expend" IN (0, 1))'));
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, true,
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
  static const VerificationMeta _isIncludeMenuMeta =
      const VerificationMeta('isIncludeMenu');
  @override
  late final GeneratedColumn<bool> isIncludeMenu = GeneratedColumn<bool>(
      'is_include_menu', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_include_menu" IN (0, 1))'));
  static const VerificationMeta _isIncludeLiveSalesMeta =
      const VerificationMeta('isIncludeLiveSales');
  @override
  late final GeneratedColumn<bool> isIncludeLiveSales = GeneratedColumn<bool>(
      'is_include_live_sales', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_include_live_sales" IN (0, 1))'));
  static const VerificationMeta _isParentMeta =
      const VerificationMeta('isParent');
  @override
  late final GeneratedColumn<bool> isParent = GeneratedColumn<bool>(
      'is_parent', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_parent" IN (0, 1))'));
  static const VerificationMeta _isIncludeHomeMeta =
      const VerificationMeta('isIncludeHome');
  @override
  late final GeneratedColumn<bool> isIncludeHome = GeneratedColumn<bool>(
      'is_include_home', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_include_home" IN (0, 1))'));
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
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, true,
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
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<String> parent = GeneratedColumn<String>(
      'parent', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _childrenMeta =
      const VerificationMeta('children');
  @override
  late final GeneratedColumn<String> children = GeneratedColumn<String>(
      'children', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        id,
        products,
        images,
        image,
        label,
        description,
        isExpend,
        position,
        isEnable,
        isIncludeMenu,
        isIncludeLiveSales,
        isParent,
        isIncludeHome,
        showInSpecialCategory,
        showBestSaleCategory,
        type,
        code,
        createdAt,
        updatedAt,
        createdBy,
        updatedBy,
        parent,
        children
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
    if (data.containsKey('products')) {
      context.handle(_productsMeta,
          products.isAcceptableOrUnknown(data['products']!, _productsMeta));
    }
    if (data.containsKey('images')) {
      context.handle(_imagesMeta,
          images.isAcceptableOrUnknown(data['images']!, _imagesMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
          _labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('is_expend')) {
      context.handle(_isExpendMeta,
          isExpend.isAcceptableOrUnknown(data['is_expend']!, _isExpendMeta));
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('is_enable')) {
      context.handle(_isEnableMeta,
          isEnable.isAcceptableOrUnknown(data['is_enable']!, _isEnableMeta));
    }
    if (data.containsKey('is_include_menu')) {
      context.handle(
          _isIncludeMenuMeta,
          isIncludeMenu.isAcceptableOrUnknown(
              data['is_include_menu']!, _isIncludeMenuMeta));
    }
    if (data.containsKey('is_include_live_sales')) {
      context.handle(
          _isIncludeLiveSalesMeta,
          isIncludeLiveSales.isAcceptableOrUnknown(
              data['is_include_live_sales']!, _isIncludeLiveSalesMeta));
    }
    if (data.containsKey('is_parent')) {
      context.handle(_isParentMeta,
          isParent.isAcceptableOrUnknown(data['is_parent']!, _isParentMeta));
    }
    if (data.containsKey('is_include_home')) {
      context.handle(
          _isIncludeHomeMeta,
          isIncludeHome.isAcceptableOrUnknown(
              data['is_include_home']!, _isIncludeHomeMeta));
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
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
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('children')) {
      context.handle(_childrenMeta,
          children.isAcceptableOrUnknown(data['children']!, _childrenMeta));
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
      products: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}products']),
      images: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}images']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      label: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}label']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      isExpend: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_expend']),
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position']),
      isEnable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_enable']),
      isIncludeMenu: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_include_menu']),
      isIncludeLiveSales: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_include_live_sales']),
      isParent: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_parent']),
      isIncludeHome: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_include_home']),
      showInSpecialCategory: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}show_in_special_category']),
      showBestSaleCategory: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}show_best_sale_category']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      createdBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_by']),
      updatedBy: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_by']),
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parent']),
      children: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}children']),
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
  final String? products;
  final String? images;
  final String? image;
  final String? label;
  final String? description;
  final bool? isExpend;
  final int? position;
  final bool? isEnable;
  final bool? isIncludeMenu;
  final bool? isIncludeLiveSales;
  final bool? isParent;
  final bool? isIncludeHome;
  final bool? showInSpecialCategory;
  final bool? showBestSaleCategory;
  final String? type;
  final String? code;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? createdBy;
  final String? updatedBy;
  final String? parent;
  final String? children;
  const CategoryTableData(
      {this.sl,
      this.id,
      this.products,
      this.images,
      this.image,
      this.label,
      this.description,
      this.isExpend,
      this.position,
      this.isEnable,
      this.isIncludeMenu,
      this.isIncludeLiveSales,
      this.isParent,
      this.isIncludeHome,
      this.showInSpecialCategory,
      this.showBestSaleCategory,
      this.type,
      this.code,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.parent,
      this.children});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || products != null) {
      map['products'] = Variable<String>(products);
    }
    if (!nullToAbsent || images != null) {
      map['images'] = Variable<String>(images);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || label != null) {
      map['label'] = Variable<String>(label);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || isExpend != null) {
      map['is_expend'] = Variable<bool>(isExpend);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || isEnable != null) {
      map['is_enable'] = Variable<bool>(isEnable);
    }
    if (!nullToAbsent || isIncludeMenu != null) {
      map['is_include_menu'] = Variable<bool>(isIncludeMenu);
    }
    if (!nullToAbsent || isIncludeLiveSales != null) {
      map['is_include_live_sales'] = Variable<bool>(isIncludeLiveSales);
    }
    if (!nullToAbsent || isParent != null) {
      map['is_parent'] = Variable<bool>(isParent);
    }
    if (!nullToAbsent || isIncludeHome != null) {
      map['is_include_home'] = Variable<bool>(isIncludeHome);
    }
    if (!nullToAbsent || showInSpecialCategory != null) {
      map['show_in_special_category'] = Variable<bool>(showInSpecialCategory);
    }
    if (!nullToAbsent || showBestSaleCategory != null) {
      map['show_best_sale_category'] = Variable<bool>(showBestSaleCategory);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<String>(code);
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
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<String>(parent);
    }
    if (!nullToAbsent || children != null) {
      map['children'] = Variable<String>(children);
    }
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      products: products == null && nullToAbsent
          ? const Value.absent()
          : Value(products),
      images:
          images == null && nullToAbsent ? const Value.absent() : Value(images),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      label:
          label == null && nullToAbsent ? const Value.absent() : Value(label),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isExpend: isExpend == null && nullToAbsent
          ? const Value.absent()
          : Value(isExpend),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      isEnable: isEnable == null && nullToAbsent
          ? const Value.absent()
          : Value(isEnable),
      isIncludeMenu: isIncludeMenu == null && nullToAbsent
          ? const Value.absent()
          : Value(isIncludeMenu),
      isIncludeLiveSales: isIncludeLiveSales == null && nullToAbsent
          ? const Value.absent()
          : Value(isIncludeLiveSales),
      isParent: isParent == null && nullToAbsent
          ? const Value.absent()
          : Value(isParent),
      isIncludeHome: isIncludeHome == null && nullToAbsent
          ? const Value.absent()
          : Value(isIncludeHome),
      showInSpecialCategory: showInSpecialCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(showInSpecialCategory),
      showBestSaleCategory: showBestSaleCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(showBestSaleCategory),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
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
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      children: children == null && nullToAbsent
          ? const Value.absent()
          : Value(children),
    );
  }

  factory CategoryTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      id: serializer.fromJson<String?>(json['id']),
      products: serializer.fromJson<String?>(json['products']),
      images: serializer.fromJson<String?>(json['images']),
      image: serializer.fromJson<String?>(json['image']),
      label: serializer.fromJson<String?>(json['label']),
      description: serializer.fromJson<String?>(json['description']),
      isExpend: serializer.fromJson<bool?>(json['isExpend']),
      position: serializer.fromJson<int?>(json['position']),
      isEnable: serializer.fromJson<bool?>(json['isEnable']),
      isIncludeMenu: serializer.fromJson<bool?>(json['isIncludeMenu']),
      isIncludeLiveSales:
          serializer.fromJson<bool?>(json['isIncludeLiveSales']),
      isParent: serializer.fromJson<bool?>(json['isParent']),
      isIncludeHome: serializer.fromJson<bool?>(json['isIncludeHome']),
      showInSpecialCategory:
          serializer.fromJson<bool?>(json['showInSpecialCategory']),
      showBestSaleCategory:
          serializer.fromJson<bool?>(json['showBestSaleCategory']),
      type: serializer.fromJson<String?>(json['type']),
      code: serializer.fromJson<String?>(json['code']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      createdBy: serializer.fromJson<String?>(json['createdBy']),
      updatedBy: serializer.fromJson<String?>(json['updatedBy']),
      parent: serializer.fromJson<String?>(json['parent']),
      children: serializer.fromJson<String?>(json['children']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'products': serializer.toJson<String?>(products),
      'images': serializer.toJson<String?>(images),
      'image': serializer.toJson<String?>(image),
      'label': serializer.toJson<String?>(label),
      'description': serializer.toJson<String?>(description),
      'isExpend': serializer.toJson<bool?>(isExpend),
      'position': serializer.toJson<int?>(position),
      'isEnable': serializer.toJson<bool?>(isEnable),
      'isIncludeMenu': serializer.toJson<bool?>(isIncludeMenu),
      'isIncludeLiveSales': serializer.toJson<bool?>(isIncludeLiveSales),
      'isParent': serializer.toJson<bool?>(isParent),
      'isIncludeHome': serializer.toJson<bool?>(isIncludeHome),
      'showInSpecialCategory': serializer.toJson<bool?>(showInSpecialCategory),
      'showBestSaleCategory': serializer.toJson<bool?>(showBestSaleCategory),
      'type': serializer.toJson<String?>(type),
      'code': serializer.toJson<String?>(code),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'createdBy': serializer.toJson<String?>(createdBy),
      'updatedBy': serializer.toJson<String?>(updatedBy),
      'parent': serializer.toJson<String?>(parent),
      'children': serializer.toJson<String?>(children),
    };
  }

  CategoryTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> products = const Value.absent(),
          Value<String?> images = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> label = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<bool?> isExpend = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<bool?> isEnable = const Value.absent(),
          Value<bool?> isIncludeMenu = const Value.absent(),
          Value<bool?> isIncludeLiveSales = const Value.absent(),
          Value<bool?> isParent = const Value.absent(),
          Value<bool?> isIncludeHome = const Value.absent(),
          Value<bool?> showInSpecialCategory = const Value.absent(),
          Value<bool?> showBestSaleCategory = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> code = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<String?> createdBy = const Value.absent(),
          Value<String?> updatedBy = const Value.absent(),
          Value<String?> parent = const Value.absent(),
          Value<String?> children = const Value.absent()}) =>
      CategoryTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        products: products.present ? products.value : this.products,
        images: images.present ? images.value : this.images,
        image: image.present ? image.value : this.image,
        label: label.present ? label.value : this.label,
        description: description.present ? description.value : this.description,
        isExpend: isExpend.present ? isExpend.value : this.isExpend,
        position: position.present ? position.value : this.position,
        isEnable: isEnable.present ? isEnable.value : this.isEnable,
        isIncludeMenu:
            isIncludeMenu.present ? isIncludeMenu.value : this.isIncludeMenu,
        isIncludeLiveSales: isIncludeLiveSales.present
            ? isIncludeLiveSales.value
            : this.isIncludeLiveSales,
        isParent: isParent.present ? isParent.value : this.isParent,
        isIncludeHome:
            isIncludeHome.present ? isIncludeHome.value : this.isIncludeHome,
        showInSpecialCategory: showInSpecialCategory.present
            ? showInSpecialCategory.value
            : this.showInSpecialCategory,
        showBestSaleCategory: showBestSaleCategory.present
            ? showBestSaleCategory.value
            : this.showBestSaleCategory,
        type: type.present ? type.value : this.type,
        code: code.present ? code.value : this.code,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        createdBy: createdBy.present ? createdBy.value : this.createdBy,
        updatedBy: updatedBy.present ? updatedBy.value : this.updatedBy,
        parent: parent.present ? parent.value : this.parent,
        children: children.present ? children.value : this.children,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('products: $products, ')
          ..write('images: $images, ')
          ..write('image: $image, ')
          ..write('label: $label, ')
          ..write('description: $description, ')
          ..write('isExpend: $isExpend, ')
          ..write('position: $position, ')
          ..write('isEnable: $isEnable, ')
          ..write('isIncludeMenu: $isIncludeMenu, ')
          ..write('isIncludeLiveSales: $isIncludeLiveSales, ')
          ..write('isParent: $isParent, ')
          ..write('isIncludeHome: $isIncludeHome, ')
          ..write('showInSpecialCategory: $showInSpecialCategory, ')
          ..write('showBestSaleCategory: $showBestSaleCategory, ')
          ..write('type: $type, ')
          ..write('code: $code, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('parent: $parent, ')
          ..write('children: $children')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        id,
        products,
        images,
        image,
        label,
        description,
        isExpend,
        position,
        isEnable,
        isIncludeMenu,
        isIncludeLiveSales,
        isParent,
        isIncludeHome,
        showInSpecialCategory,
        showBestSaleCategory,
        type,
        code,
        createdAt,
        updatedAt,
        createdBy,
        updatedBy,
        parent,
        children
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.products == this.products &&
          other.images == this.images &&
          other.image == this.image &&
          other.label == this.label &&
          other.description == this.description &&
          other.isExpend == this.isExpend &&
          other.position == this.position &&
          other.isEnable == this.isEnable &&
          other.isIncludeMenu == this.isIncludeMenu &&
          other.isIncludeLiveSales == this.isIncludeLiveSales &&
          other.isParent == this.isParent &&
          other.isIncludeHome == this.isIncludeHome &&
          other.showInSpecialCategory == this.showInSpecialCategory &&
          other.showBestSaleCategory == this.showBestSaleCategory &&
          other.type == this.type &&
          other.code == this.code &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.createdBy == this.createdBy &&
          other.updatedBy == this.updatedBy &&
          other.parent == this.parent &&
          other.children == this.children);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> products;
  final Value<String?> images;
  final Value<String?> image;
  final Value<String?> label;
  final Value<String?> description;
  final Value<bool?> isExpend;
  final Value<int?> position;
  final Value<bool?> isEnable;
  final Value<bool?> isIncludeMenu;
  final Value<bool?> isIncludeLiveSales;
  final Value<bool?> isParent;
  final Value<bool?> isIncludeHome;
  final Value<bool?> showInSpecialCategory;
  final Value<bool?> showBestSaleCategory;
  final Value<String?> type;
  final Value<String?> code;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String?> createdBy;
  final Value<String?> updatedBy;
  final Value<String?> parent;
  final Value<String?> children;
  const CategoryTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.products = const Value.absent(),
    this.images = const Value.absent(),
    this.image = const Value.absent(),
    this.label = const Value.absent(),
    this.description = const Value.absent(),
    this.isExpend = const Value.absent(),
    this.position = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.isIncludeMenu = const Value.absent(),
    this.isIncludeLiveSales = const Value.absent(),
    this.isParent = const Value.absent(),
    this.isIncludeHome = const Value.absent(),
    this.showInSpecialCategory = const Value.absent(),
    this.showBestSaleCategory = const Value.absent(),
    this.type = const Value.absent(),
    this.code = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.parent = const Value.absent(),
    this.children = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.products = const Value.absent(),
    this.images = const Value.absent(),
    this.image = const Value.absent(),
    this.label = const Value.absent(),
    this.description = const Value.absent(),
    this.isExpend = const Value.absent(),
    this.position = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.isIncludeMenu = const Value.absent(),
    this.isIncludeLiveSales = const Value.absent(),
    this.isParent = const Value.absent(),
    this.isIncludeHome = const Value.absent(),
    this.showInSpecialCategory = const Value.absent(),
    this.showBestSaleCategory = const Value.absent(),
    this.type = const Value.absent(),
    this.code = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdBy = const Value.absent(),
    this.updatedBy = const Value.absent(),
    this.parent = const Value.absent(),
    this.children = const Value.absent(),
  });
  static Insertable<CategoryTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? products,
    Expression<String>? images,
    Expression<String>? image,
    Expression<String>? label,
    Expression<String>? description,
    Expression<bool>? isExpend,
    Expression<int>? position,
    Expression<bool>? isEnable,
    Expression<bool>? isIncludeMenu,
    Expression<bool>? isIncludeLiveSales,
    Expression<bool>? isParent,
    Expression<bool>? isIncludeHome,
    Expression<bool>? showInSpecialCategory,
    Expression<bool>? showBestSaleCategory,
    Expression<String>? type,
    Expression<String>? code,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? createdBy,
    Expression<String>? updatedBy,
    Expression<String>? parent,
    Expression<String>? children,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (products != null) 'products': products,
      if (images != null) 'images': images,
      if (image != null) 'image': image,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (isExpend != null) 'is_expend': isExpend,
      if (position != null) 'position': position,
      if (isEnable != null) 'is_enable': isEnable,
      if (isIncludeMenu != null) 'is_include_menu': isIncludeMenu,
      if (isIncludeLiveSales != null)
        'is_include_live_sales': isIncludeLiveSales,
      if (isParent != null) 'is_parent': isParent,
      if (isIncludeHome != null) 'is_include_home': isIncludeHome,
      if (showInSpecialCategory != null)
        'show_in_special_category': showInSpecialCategory,
      if (showBestSaleCategory != null)
        'show_best_sale_category': showBestSaleCategory,
      if (type != null) 'type': type,
      if (code != null) 'code': code,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdBy != null) 'created_by': createdBy,
      if (updatedBy != null) 'updated_by': updatedBy,
      if (parent != null) 'parent': parent,
      if (children != null) 'children': children,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? products,
      Value<String?>? images,
      Value<String?>? image,
      Value<String?>? label,
      Value<String?>? description,
      Value<bool?>? isExpend,
      Value<int?>? position,
      Value<bool?>? isEnable,
      Value<bool?>? isIncludeMenu,
      Value<bool?>? isIncludeLiveSales,
      Value<bool?>? isParent,
      Value<bool?>? isIncludeHome,
      Value<bool?>? showInSpecialCategory,
      Value<bool?>? showBestSaleCategory,
      Value<String?>? type,
      Value<String?>? code,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<String?>? createdBy,
      Value<String?>? updatedBy,
      Value<String?>? parent,
      Value<String?>? children}) {
    return CategoryTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      products: products ?? this.products,
      images: images ?? this.images,
      image: image ?? this.image,
      label: label ?? this.label,
      description: description ?? this.description,
      isExpend: isExpend ?? this.isExpend,
      position: position ?? this.position,
      isEnable: isEnable ?? this.isEnable,
      isIncludeMenu: isIncludeMenu ?? this.isIncludeMenu,
      isIncludeLiveSales: isIncludeLiveSales ?? this.isIncludeLiveSales,
      isParent: isParent ?? this.isParent,
      isIncludeHome: isIncludeHome ?? this.isIncludeHome,
      showInSpecialCategory:
          showInSpecialCategory ?? this.showInSpecialCategory,
      showBestSaleCategory: showBestSaleCategory ?? this.showBestSaleCategory,
      type: type ?? this.type,
      code: code ?? this.code,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdBy: createdBy ?? this.createdBy,
      updatedBy: updatedBy ?? this.updatedBy,
      parent: parent ?? this.parent,
      children: children ?? this.children,
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
    if (products.present) {
      map['products'] = Variable<String>(products.value);
    }
    if (images.present) {
      map['images'] = Variable<String>(images.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isExpend.present) {
      map['is_expend'] = Variable<bool>(isExpend.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (isEnable.present) {
      map['is_enable'] = Variable<bool>(isEnable.value);
    }
    if (isIncludeMenu.present) {
      map['is_include_menu'] = Variable<bool>(isIncludeMenu.value);
    }
    if (isIncludeLiveSales.present) {
      map['is_include_live_sales'] = Variable<bool>(isIncludeLiveSales.value);
    }
    if (isParent.present) {
      map['is_parent'] = Variable<bool>(isParent.value);
    }
    if (isIncludeHome.present) {
      map['is_include_home'] = Variable<bool>(isIncludeHome.value);
    }
    if (showInSpecialCategory.present) {
      map['show_in_special_category'] =
          Variable<bool>(showInSpecialCategory.value);
    }
    if (showBestSaleCategory.present) {
      map['show_best_sale_category'] =
          Variable<bool>(showBestSaleCategory.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
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
    if (parent.present) {
      map['parent'] = Variable<String>(parent.value);
    }
    if (children.present) {
      map['children'] = Variable<String>(children.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('products: $products, ')
          ..write('images: $images, ')
          ..write('image: $image, ')
          ..write('label: $label, ')
          ..write('description: $description, ')
          ..write('isExpend: $isExpend, ')
          ..write('position: $position, ')
          ..write('isEnable: $isEnable, ')
          ..write('isIncludeMenu: $isIncludeMenu, ')
          ..write('isIncludeLiveSales: $isIncludeLiveSales, ')
          ..write('isParent: $isParent, ')
          ..write('isIncludeHome: $isIncludeHome, ')
          ..write('showInSpecialCategory: $showInSpecialCategory, ')
          ..write('showBestSaleCategory: $showBestSaleCategory, ')
          ..write('type: $type, ')
          ..write('code: $code, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdBy: $createdBy, ')
          ..write('updatedBy: $updatedBy, ')
          ..write('parent: $parent, ')
          ..write('children: $children')
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
  static const VerificationMeta _orderSlMeta =
      const VerificationMeta('orderSl');
  @override
  late final GeneratedColumn<int> orderSl = GeneratedColumn<int>(
      'order_sl', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES order_table (sl)'));
  @override
  List<GeneratedColumn> get $columns =>
      [sl, id, name, count, price, imageUrl, orderSl];
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
    if (data.containsKey('order_sl')) {
      context.handle(_orderSlMeta,
          orderSl.isAcceptableOrUnknown(data['order_sl']!, _orderSlMeta));
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
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      count: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}count']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      orderSl: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_sl']),
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
  final String? name;
  final int? count;
  final double? price;
  final String? imageUrl;
  final int? orderSl;
  const ItemTableData(
      {this.sl,
      this.id,
      this.name,
      this.count,
      this.price,
      this.imageUrl,
      this.orderSl});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
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
    if (!nullToAbsent || orderSl != null) {
      map['order_sl'] = Variable<int>(orderSl);
    }
    return map;
  }

  ItemTableCompanion toCompanion(bool nullToAbsent) {
    return ItemTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      count:
          count == null && nullToAbsent ? const Value.absent() : Value(count),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      orderSl: orderSl == null && nullToAbsent
          ? const Value.absent()
          : Value(orderSl),
    );
  }

  factory ItemTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      id: serializer.fromJson<String?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      count: serializer.fromJson<int?>(json['count']),
      price: serializer.fromJson<double?>(json['price']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      orderSl: serializer.fromJson<int?>(json['orderSl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'name': serializer.toJson<String?>(name),
      'count': serializer.toJson<int?>(count),
      'price': serializer.toJson<double?>(price),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'orderSl': serializer.toJson<int?>(orderSl),
    };
  }

  ItemTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<int?> count = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<int?> orderSl = const Value.absent()}) =>
      ItemTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        name: name.present ? name.value : this.name,
        count: count.present ? count.value : this.count,
        price: price.present ? price.value : this.price,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        orderSl: orderSl.present ? orderSl.value : this.orderSl,
      );
  @override
  String toString() {
    return (StringBuffer('ItemTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('count: $count, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('orderSl: $orderSl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(sl, id, name, count, price, imageUrl, orderSl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.name == this.name &&
          other.count == this.count &&
          other.price == this.price &&
          other.imageUrl == this.imageUrl &&
          other.orderSl == this.orderSl);
}

class ItemTableCompanion extends UpdateCompanion<ItemTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> name;
  final Value<int?> count;
  final Value<double?> price;
  final Value<String?> imageUrl;
  final Value<int?> orderSl;
  const ItemTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.count = const Value.absent(),
    this.price = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.orderSl = const Value.absent(),
  });
  ItemTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.count = const Value.absent(),
    this.price = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.orderSl = const Value.absent(),
  });
  static Insertable<ItemTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? count,
    Expression<double>? price,
    Expression<String>? imageUrl,
    Expression<int>? orderSl,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (count != null) 'count': count,
      if (price != null) 'price': price,
      if (imageUrl != null) 'image_url': imageUrl,
      if (orderSl != null) 'order_sl': orderSl,
    });
  }

  ItemTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? name,
      Value<int?>? count,
      Value<double?>? price,
      Value<String?>? imageUrl,
      Value<int?>? orderSl}) {
    return ItemTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      name: name ?? this.name,
      count: count ?? this.count,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      orderSl: orderSl ?? this.orderSl,
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
    if (orderSl.present) {
      map['order_sl'] = Variable<int>(orderSl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('count: $count, ')
          ..write('price: $price, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('orderSl: $orderSl')
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
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isEnableMeta =
      const VerificationMeta('isEnable');
  @override
  late final GeneratedColumn<bool> isEnable = GeneratedColumn<bool>(
      'is_enable', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_enable" IN (0, 1))'));
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _isDiscountMeta =
      const VerificationMeta('isDiscount');
  @override
  late final GeneratedColumn<bool> isDiscount = GeneratedColumn<bool>(
      'is_disoucnt', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_disoucnt" IN (0, 1))'));
  static const VerificationMeta _discountPriceMeta =
      const VerificationMeta('discountPrice');
  @override
  late final GeneratedColumn<double> discountPrice = GeneratedColumn<double>(
      'disoucnt_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _vatPercentageMeta =
      const VerificationMeta('vatPercentage');
  @override
  late final GeneratedColumn<double> vatPercentage = GeneratedColumn<double>(
      'vatpercentage', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _imagesMeta = const VerificationMeta('images');
  @override
  late final GeneratedColumn<String> images = GeneratedColumn<String>(
      'images', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
      'category_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryLabelMeta =
      const VerificationMeta('categoryLabel');
  @override
  late final GeneratedColumn<String> categoryLabel = GeneratedColumn<String>(
      'category_label', aliasedName, true,
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
  static const VerificationMeta _positionMeta =
      const VerificationMeta('position');
  @override
  late final GeneratedColumn<int> position = GeneratedColumn<int>(
      'position', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
      'total_rating', aliasedName, true,
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
  @override
  List<GeneratedColumn> get $columns => [
        sl,
        id,
        name,
        isEnable,
        price,
        isDiscount,
        discountPrice,
        vatPercentage,
        images,
        categoryId,
        categoryLabel,
        description,
        shortDescription,
        position,
        averageRating,
        totalRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating
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
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('is_enable')) {
      context.handle(_isEnableMeta,
          isEnable.isAcceptableOrUnknown(data['is_enable']!, _isEnableMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('is_disoucnt')) {
      context.handle(
          _isDiscountMeta,
          isDiscount.isAcceptableOrUnknown(
              data['is_disoucnt']!, _isDiscountMeta));
    }
    if (data.containsKey('disoucnt_price')) {
      context.handle(
          _discountPriceMeta,
          discountPrice.isAcceptableOrUnknown(
              data['disoucnt_price']!, _discountPriceMeta));
    }
    if (data.containsKey('vatpercentage')) {
      context.handle(
          _vatPercentageMeta,
          vatPercentage.isAcceptableOrUnknown(
              data['vatpercentage']!, _vatPercentageMeta));
    }
    if (data.containsKey('images')) {
      context.handle(_imagesMeta,
          images.isAcceptableOrUnknown(data['images']!, _imagesMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('category_label')) {
      context.handle(
          _categoryLabelMeta,
          categoryLabel.isAcceptableOrUnknown(
              data['category_label']!, _categoryLabelMeta));
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
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position']!, _positionMeta));
    }
    if (data.containsKey('average_rating')) {
      context.handle(
          _averageRatingMeta,
          averageRating.isAcceptableOrUnknown(
              data['average_rating']!, _averageRatingMeta));
    }
    if (data.containsKey('total_rating')) {
      context.handle(
          _totalRatingMeta,
          totalRating.isAcceptableOrUnknown(
              data['total_rating']!, _totalRatingMeta));
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
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      isEnable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_enable']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      isDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_disoucnt']),
      discountPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}disoucnt_price']),
      vatPercentage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}vatpercentage']),
      images: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}images']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_id']),
      categoryLabel: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category_label']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      shortDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}short_description']),
      position: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}position']),
      averageRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}average_rating']),
      totalRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_rating']),
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
  final String? name;
  final bool? isEnable;
  final double? price;
  final bool? isDiscount;
  final double? discountPrice;
  final double? vatPercentage;
  final String? images;
  final String? categoryId;
  final String? categoryLabel;
  final String? description;
  final String? shortDescription;
  final int? position;
  final int? averageRating;
  final int? totalRating;
  final double? average5PercentRating;
  final double? average4PercentRating;
  final double? average3PercentRating;
  final double? average2PercentRating;
  final double? average1PercentRating;
  const ProductTableData(
      {this.sl,
      this.id,
      this.name,
      this.isEnable,
      this.price,
      this.isDiscount,
      this.discountPrice,
      this.vatPercentage,
      this.images,
      this.categoryId,
      this.categoryLabel,
      this.description,
      this.shortDescription,
      this.position,
      this.averageRating,
      this.totalRating,
      this.average5PercentRating,
      this.average4PercentRating,
      this.average3PercentRating,
      this.average2PercentRating,
      this.average1PercentRating});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || sl != null) {
      map['sl'] = Variable<int>(sl);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || isEnable != null) {
      map['is_enable'] = Variable<bool>(isEnable);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || isDiscount != null) {
      map['is_disoucnt'] = Variable<bool>(isDiscount);
    }
    if (!nullToAbsent || discountPrice != null) {
      map['disoucnt_price'] = Variable<double>(discountPrice);
    }
    if (!nullToAbsent || vatPercentage != null) {
      map['vatpercentage'] = Variable<double>(vatPercentage);
    }
    if (!nullToAbsent || images != null) {
      map['images'] = Variable<String>(images);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<String>(categoryId);
    }
    if (!nullToAbsent || categoryLabel != null) {
      map['category_label'] = Variable<String>(categoryLabel);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || shortDescription != null) {
      map['short_description'] = Variable<String>(shortDescription);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || averageRating != null) {
      map['average_rating'] = Variable<int>(averageRating);
    }
    if (!nullToAbsent || totalRating != null) {
      map['total_rating'] = Variable<int>(totalRating);
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
    return map;
  }

  ProductTableCompanion toCompanion(bool nullToAbsent) {
    return ProductTableCompanion(
      sl: sl == null && nullToAbsent ? const Value.absent() : Value(sl),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      isEnable: isEnable == null && nullToAbsent
          ? const Value.absent()
          : Value(isEnable),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      isDiscount: isDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(isDiscount),
      discountPrice: discountPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPrice),
      vatPercentage: vatPercentage == null && nullToAbsent
          ? const Value.absent()
          : Value(vatPercentage),
      images:
          images == null && nullToAbsent ? const Value.absent() : Value(images),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      categoryLabel: categoryLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryLabel),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      shortDescription: shortDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(shortDescription),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
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
    );
  }

  factory ProductTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTableData(
      sl: serializer.fromJson<int?>(json['sl']),
      id: serializer.fromJson<String?>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      isEnable: serializer.fromJson<bool?>(json['isEnable']),
      price: serializer.fromJson<double?>(json['price']),
      isDiscount: serializer.fromJson<bool?>(json['isDiscount']),
      discountPrice: serializer.fromJson<double?>(json['discountPrice']),
      vatPercentage: serializer.fromJson<double?>(json['vatPercentage']),
      images: serializer.fromJson<String?>(json['images']),
      categoryId: serializer.fromJson<String?>(json['categoryId']),
      categoryLabel: serializer.fromJson<String?>(json['categoryLabel']),
      description: serializer.fromJson<String?>(json['description']),
      shortDescription: serializer.fromJson<String?>(json['shortDescription']),
      position: serializer.fromJson<int?>(json['position']),
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
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'sl': serializer.toJson<int?>(sl),
      'id': serializer.toJson<String?>(id),
      'name': serializer.toJson<String?>(name),
      'isEnable': serializer.toJson<bool?>(isEnable),
      'price': serializer.toJson<double?>(price),
      'isDiscount': serializer.toJson<bool?>(isDiscount),
      'discountPrice': serializer.toJson<double?>(discountPrice),
      'vatPercentage': serializer.toJson<double?>(vatPercentage),
      'images': serializer.toJson<String?>(images),
      'categoryId': serializer.toJson<String?>(categoryId),
      'categoryLabel': serializer.toJson<String?>(categoryLabel),
      'description': serializer.toJson<String?>(description),
      'shortDescription': serializer.toJson<String?>(shortDescription),
      'position': serializer.toJson<int?>(position),
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
    };
  }

  ProductTableData copyWith(
          {Value<int?> sl = const Value.absent(),
          Value<String?> id = const Value.absent(),
          Value<String?> name = const Value.absent(),
          Value<bool?> isEnable = const Value.absent(),
          Value<double?> price = const Value.absent(),
          Value<bool?> isDiscount = const Value.absent(),
          Value<double?> discountPrice = const Value.absent(),
          Value<double?> vatPercentage = const Value.absent(),
          Value<String?> images = const Value.absent(),
          Value<String?> categoryId = const Value.absent(),
          Value<String?> categoryLabel = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> shortDescription = const Value.absent(),
          Value<int?> position = const Value.absent(),
          Value<int?> averageRating = const Value.absent(),
          Value<int?> totalRating = const Value.absent(),
          Value<double?> average5PercentRating = const Value.absent(),
          Value<double?> average4PercentRating = const Value.absent(),
          Value<double?> average3PercentRating = const Value.absent(),
          Value<double?> average2PercentRating = const Value.absent(),
          Value<double?> average1PercentRating = const Value.absent()}) =>
      ProductTableData(
        sl: sl.present ? sl.value : this.sl,
        id: id.present ? id.value : this.id,
        name: name.present ? name.value : this.name,
        isEnable: isEnable.present ? isEnable.value : this.isEnable,
        price: price.present ? price.value : this.price,
        isDiscount: isDiscount.present ? isDiscount.value : this.isDiscount,
        discountPrice:
            discountPrice.present ? discountPrice.value : this.discountPrice,
        vatPercentage:
            vatPercentage.present ? vatPercentage.value : this.vatPercentage,
        images: images.present ? images.value : this.images,
        categoryId: categoryId.present ? categoryId.value : this.categoryId,
        categoryLabel:
            categoryLabel.present ? categoryLabel.value : this.categoryLabel,
        description: description.present ? description.value : this.description,
        shortDescription: shortDescription.present
            ? shortDescription.value
            : this.shortDescription,
        position: position.present ? position.value : this.position,
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
      );
  @override
  String toString() {
    return (StringBuffer('ProductTableData(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isEnable: $isEnable, ')
          ..write('price: $price, ')
          ..write('isDiscount: $isDiscount, ')
          ..write('discountPrice: $discountPrice, ')
          ..write('vatPercentage: $vatPercentage, ')
          ..write('images: $images, ')
          ..write('categoryId: $categoryId, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('description: $description, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('position: $position, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalRating: $totalRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        sl,
        id,
        name,
        isEnable,
        price,
        isDiscount,
        discountPrice,
        vatPercentage,
        images,
        categoryId,
        categoryLabel,
        description,
        shortDescription,
        position,
        averageRating,
        totalRating,
        average5PercentRating,
        average4PercentRating,
        average3PercentRating,
        average2PercentRating,
        average1PercentRating
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTableData &&
          other.sl == this.sl &&
          other.id == this.id &&
          other.name == this.name &&
          other.isEnable == this.isEnable &&
          other.price == this.price &&
          other.isDiscount == this.isDiscount &&
          other.discountPrice == this.discountPrice &&
          other.vatPercentage == this.vatPercentage &&
          other.images == this.images &&
          other.categoryId == this.categoryId &&
          other.categoryLabel == this.categoryLabel &&
          other.description == this.description &&
          other.shortDescription == this.shortDescription &&
          other.position == this.position &&
          other.averageRating == this.averageRating &&
          other.totalRating == this.totalRating &&
          other.average5PercentRating == this.average5PercentRating &&
          other.average4PercentRating == this.average4PercentRating &&
          other.average3PercentRating == this.average3PercentRating &&
          other.average2PercentRating == this.average2PercentRating &&
          other.average1PercentRating == this.average1PercentRating);
}

class ProductTableCompanion extends UpdateCompanion<ProductTableData> {
  final Value<int?> sl;
  final Value<String?> id;
  final Value<String?> name;
  final Value<bool?> isEnable;
  final Value<double?> price;
  final Value<bool?> isDiscount;
  final Value<double?> discountPrice;
  final Value<double?> vatPercentage;
  final Value<String?> images;
  final Value<String?> categoryId;
  final Value<String?> categoryLabel;
  final Value<String?> description;
  final Value<String?> shortDescription;
  final Value<int?> position;
  final Value<int?> averageRating;
  final Value<int?> totalRating;
  final Value<double?> average5PercentRating;
  final Value<double?> average4PercentRating;
  final Value<double?> average3PercentRating;
  final Value<double?> average2PercentRating;
  final Value<double?> average1PercentRating;
  const ProductTableCompanion({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.price = const Value.absent(),
    this.isDiscount = const Value.absent(),
    this.discountPrice = const Value.absent(),
    this.vatPercentage = const Value.absent(),
    this.images = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.position = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
  });
  ProductTableCompanion.insert({
    this.sl = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.isEnable = const Value.absent(),
    this.price = const Value.absent(),
    this.isDiscount = const Value.absent(),
    this.discountPrice = const Value.absent(),
    this.vatPercentage = const Value.absent(),
    this.images = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.categoryLabel = const Value.absent(),
    this.description = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.position = const Value.absent(),
    this.averageRating = const Value.absent(),
    this.totalRating = const Value.absent(),
    this.average5PercentRating = const Value.absent(),
    this.average4PercentRating = const Value.absent(),
    this.average3PercentRating = const Value.absent(),
    this.average2PercentRating = const Value.absent(),
    this.average1PercentRating = const Value.absent(),
  });
  static Insertable<ProductTableData> custom({
    Expression<int>? sl,
    Expression<String>? id,
    Expression<String>? name,
    Expression<bool>? isEnable,
    Expression<double>? price,
    Expression<bool>? isDiscount,
    Expression<double>? discountPrice,
    Expression<double>? vatPercentage,
    Expression<String>? images,
    Expression<String>? categoryId,
    Expression<String>? categoryLabel,
    Expression<String>? description,
    Expression<String>? shortDescription,
    Expression<int>? position,
    Expression<int>? averageRating,
    Expression<int>? totalRating,
    Expression<double>? average5PercentRating,
    Expression<double>? average4PercentRating,
    Expression<double>? average3PercentRating,
    Expression<double>? average2PercentRating,
    Expression<double>? average1PercentRating,
  }) {
    return RawValuesInsertable({
      if (sl != null) 'sl': sl,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (isEnable != null) 'is_enable': isEnable,
      if (price != null) 'price': price,
      if (isDiscount != null) 'is_disoucnt': isDiscount,
      if (discountPrice != null) 'disoucnt_price': discountPrice,
      if (vatPercentage != null) 'vatpercentage': vatPercentage,
      if (images != null) 'images': images,
      if (categoryId != null) 'category_id': categoryId,
      if (categoryLabel != null) 'category_label': categoryLabel,
      if (description != null) 'description': description,
      if (shortDescription != null) 'short_description': shortDescription,
      if (position != null) 'position': position,
      if (averageRating != null) 'average_rating': averageRating,
      if (totalRating != null) 'total_rating': totalRating,
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
    });
  }

  ProductTableCompanion copyWith(
      {Value<int?>? sl,
      Value<String?>? id,
      Value<String?>? name,
      Value<bool?>? isEnable,
      Value<double?>? price,
      Value<bool?>? isDiscount,
      Value<double?>? discountPrice,
      Value<double?>? vatPercentage,
      Value<String?>? images,
      Value<String?>? categoryId,
      Value<String?>? categoryLabel,
      Value<String?>? description,
      Value<String?>? shortDescription,
      Value<int?>? position,
      Value<int?>? averageRating,
      Value<int?>? totalRating,
      Value<double?>? average5PercentRating,
      Value<double?>? average4PercentRating,
      Value<double?>? average3PercentRating,
      Value<double?>? average2PercentRating,
      Value<double?>? average1PercentRating}) {
    return ProductTableCompanion(
      sl: sl ?? this.sl,
      id: id ?? this.id,
      name: name ?? this.name,
      isEnable: isEnable ?? this.isEnable,
      price: price ?? this.price,
      isDiscount: isDiscount ?? this.isDiscount,
      discountPrice: discountPrice ?? this.discountPrice,
      vatPercentage: vatPercentage ?? this.vatPercentage,
      images: images ?? this.images,
      categoryId: categoryId ?? this.categoryId,
      categoryLabel: categoryLabel ?? this.categoryLabel,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      position: position ?? this.position,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (isEnable.present) {
      map['is_enable'] = Variable<bool>(isEnable.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (isDiscount.present) {
      map['is_disoucnt'] = Variable<bool>(isDiscount.value);
    }
    if (discountPrice.present) {
      map['disoucnt_price'] = Variable<double>(discountPrice.value);
    }
    if (vatPercentage.present) {
      map['vatpercentage'] = Variable<double>(vatPercentage.value);
    }
    if (images.present) {
      map['images'] = Variable<String>(images.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (categoryLabel.present) {
      map['category_label'] = Variable<String>(categoryLabel.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (shortDescription.present) {
      map['short_description'] = Variable<String>(shortDescription.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (averageRating.present) {
      map['average_rating'] = Variable<int>(averageRating.value);
    }
    if (totalRating.present) {
      map['total_rating'] = Variable<int>(totalRating.value);
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableCompanion(')
          ..write('sl: $sl, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('isEnable: $isEnable, ')
          ..write('price: $price, ')
          ..write('isDiscount: $isDiscount, ')
          ..write('discountPrice: $discountPrice, ')
          ..write('vatPercentage: $vatPercentage, ')
          ..write('images: $images, ')
          ..write('categoryId: $categoryId, ')
          ..write('categoryLabel: $categoryLabel, ')
          ..write('description: $description, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('position: $position, ')
          ..write('averageRating: $averageRating, ')
          ..write('totalRating: $totalRating, ')
          ..write('average5PercentRating: $average5PercentRating, ')
          ..write('average4PercentRating: $average4PercentRating, ')
          ..write('average3PercentRating: $average3PercentRating, ')
          ..write('average2PercentRating: $average2PercentRating, ')
          ..write('average1PercentRating: $average1PercentRating')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $ItemTableTable itemTable = $ItemTableTable(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [categoryTable, orderTable, itemTable, productTable];
}
