part of 'category.dart'; 
extension CategoryDbExt on Category{
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

    static createTable(Database db) async {
    await db.execute('''
          CREATE TABLE category (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            products  JSONB, 
            label TEXT,
            children INT
          )
    ''');
  }

   Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO usageTimeline(date, time, gap)
            VALUES
            ('$products','$label','$children')
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }

}