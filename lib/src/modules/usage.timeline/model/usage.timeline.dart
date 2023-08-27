import 'dart:convert';

import 'package:sqflite/sqflite.dart';

class UsageTimeline {
  int? sl;
  DateTime? date;
  DateTime? time;
  Duration? gap;
  UsageTimeline({
    this.date,
    this.time,
    this.gap,
  });
  get fieldValues => [
        sl,
        date,
        time,
        gap,
      ];

  static createTable(Database db) async {
    await db.execute('''
          CREATE TABLE usageTimeline (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            date TIMESTAMP, 
            time TIMESTAMP,
            gap INT
          )
    ''');
  }

  static Future<UsageTimeline> getLastEntry(Database db) async {
    return UsageTimeline.fromMap((await db.rawQuery('''
          SELECT * FROM usageTimeline WHERE id=(SELECT max(id) FROM usageTimeline)
    ''')).first);
  }

 

  static Future<Map<String, dynamic>?> getDataRow(
    Database db, {
    required String tableName,
    required int id,
  }) async {
    final data = await db.query(tableName, where: 'sl =?', whereArgs: [id]);
    if (data.isEmpty) return null;
    return data[0];
  }

  Future<bool> insertInDb(Database db) async {
    bool isSuccess = true;
    try {
      await db.rawInsert('''
            INSERT INTO usageTimeline(date, time, gap)
            VALUES
            ('$date','$time','$gap')
      ''');
    } catch (e) {
      isSuccess = false;
    }
    return isSuccess;
  }

  UsageTimeline copyWith({
    int? sl,
    DateTime? date,
    DateTime? time,
    Duration? gap,
  }) {
    return UsageTimeline(
      date: date ?? this.date,
      time: time ?? this.time,
      gap: gap ?? this.gap,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sl': sl,
      'date': date,
      'time': time,
      'gap': gap?.toString(),
    };
  }

  factory UsageTimeline.fromMap(Map<String, dynamic> map) {
    
    return UsageTimeline(
      date: map['date'] != null ? DateTime.parse(map['date']) : null,
      time: map['time'] != null ? DateTime.parse(map['time']) : null,
      gap: map['gap'] != null ? null : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsageTimeline.fromJson(String source) =>
      UsageTimeline.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsageTimeline(sl: $sl, date: $date, time: $time, gap: $gap)';
  }
}
