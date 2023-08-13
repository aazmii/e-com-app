part of 'category.dart';

extension CategoryDbExt on Category {
  get fieldValues => [
        products,
        isExpanded,
        id,
        parentId,
        label,
        isEnable,
        isIncludeMenu,
        isIncludeLiveSales,
        isIncludeHome,
        isParent,
        parent,
        imageUrl,
        children,
      ];



  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO category(
              children, 
              products, 
              label,
              imageUrl
            )
            VALUES(
              '$imageUrl',
              '$label',
              '$label', 
              '$imageUrl'
            )
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }
}
