import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

extension TimeOfDayUtils on TimeOfDay {
  String fullTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, hour, minute).fullTime();
  }
}
