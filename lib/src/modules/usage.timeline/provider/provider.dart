import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/usage.timeline/model/usage.timeline.dart';

import 'methods.dart';

final activityProvider =
    NotifierProvider<ActivityProvider, Activity>(ActivityProvider.new);

class ActivityProvider extends Notifier<Activity> {
  final table = 'appTimeline';
  @override
  Activity build() => Activity(
        loginDate: null,
        loginTime: DateTime.now(),
      );

  void saveLogin() async {
    final now = DateTime.now();
    final DateTime? apiDateTime = now.addDays(7);

    final list = (await LocalDB.getAllData('usageTimeline'))
        .map((e) => UsageTimeline.fromMap(e))
        .toList();

    if (list.isEmpty) {
      UsageTimeline(
        date: state.loginDate,
        time: state.loginTime,
        gap: null,
      ).insertInDb(
        await LocalDB.database,
      );
      return;
    }
    final lastLogin = list.last;
    if (apiDateTime != null) {
      if (lastLogin.date!.isSameDay(apiDateTime)) {
        final gapInHours = apiDateTime.difference(lastLogin.time!).inHours;
        UsageTimeline(
          date: gapInHours < 0 ? apiDateTime.nextDay : apiDateTime,
          time: apiDateTime,
          gap: Duration(hours: gapInHours),
        ).insertInDb(await LocalDB.database);
      } else {
        final gapInHours = apiDateTime.difference(lastLogin.time!).inHours;
        final days = gapInHours ~/ 24;
        UsageTimeline(
          date: apiDateTime, //need a validation?
          time: apiDateTime,
          gap: Duration(hours: apiDateTime.difference(lastLogin.time!).inHours),
        ).insertInDb(await LocalDB.database);
        if (days > 0) _updateDeadlineInConfig(days);
      }
      //api datetime not found
    } else {
      final localTime = state.loginTime;
      final gap = localTime!.difference(lastLogin.time!).inHours;
      UsageTimeline(
        date: (gap.isNegative)
            ? lastLogin.date!.addDays(1)
            : lastLogin.date, //need a validation?
        time: state.loginTime,
        gap: Duration(hours: localTime.difference(lastLogin.time!).inHours),
      ).insertInDb(await LocalDB.database);
      if (gap.isNegative) _updateDeadlineInConfig(1);
    }
  }

  Future checkAndUpdateDeadline() async {}

  Future _updateDeadlineInConfig(int daysToDeduct) async {
    final dayLeft = await _dayLeft;
    if (dayLeft - daysToDeduct < 0) return;
    await LocalDB.updateTableCell(
      tableName: 'config',
      keyName: 'daysLeftToExpireLicense',
      value: dayLeft - daysToDeduct,
    );
  }

  Future<int> get _dayLeft async {
    final daysLeftString = await LocalDB.getCellData(
        tableName: 'config', keyName: 'daysLeftToExpireLicense');
    if (daysLeftString == null) return 0;
    final dayLeft = int.tryParse(daysLeftString);
    if (dayLeft == null) return 0;
    return dayLeft;
  }

  void onLogoutPress() async {}

  void onLoginDate(BuildContext context) async {
    final pickedDate = await pickDate(
      context,
      state.loginDate,
    );
    if (pickedDate == null) return;
    final now = DateTime.now();
    final pickedDateWithCurrentTime = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      now.hour,
      now.minute,
      now.second,
    );
    state = state.copyWith(loginDate: pickedDateWithCurrentTime);
  }

  Future onLoginTime(
    BuildContext context,
  ) async {
    state = state.copyWith(loginTime: await pickTime(context, state.loginTime));
  }

  void onLogoutDate(BuildContext context) async {}

  void onLogoutTime(BuildContext context) async {
    state =
        state.copyWith(loginTime: await pickTime(context, state.logoutTime));
  }
}

class Activity {
  DateTime? loginDate;
  DateTime? loginTime;
  DateTime? logoutDate;
  DateTime? logoutTime;
  Activity({
    this.loginDate,
    this.loginTime,
  });
  Activity copyWith({
    DateTime? loginDate,
    DateTime? loginTime,
  }) =>
      Activity(
        loginDate: loginDate ?? this.loginDate,
        loginTime: loginTime ?? this.loginTime,
      );
}
