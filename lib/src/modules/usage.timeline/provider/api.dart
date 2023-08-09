import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'methods.dart';

final apiDateTimeProvider =
    NotifierProvider<ApiDateTimeProvider, ApiDateTime>(ApiDateTimeProvider.new);

class ApiDateTimeProvider extends Notifier<ApiDateTime> {
  final table = 'appTimeline';
  @override
  ApiDateTime build() => ApiDateTime(
        apiDate: DateTime.now(),
        apiTime: DateTime.now(),
      );

  Future date(BuildContext context, [bool isNull = false]) async {
    if (isNull) {
      state = state.copyWith(apiDate: null);
      return;
    }
    state = state.copyWith(apiDate: await pickDate(context, state.apiDate));
  }

  Future time(BuildContext context, [bool isNull = false]) async {
    if (isNull) {
      state = state.copyWith(apiTime: null);

      return;
    }
    state = state.copyWith(apiTime: await pickTime(context, state.apiTime));
  }
}

class ApiDateTime {
  DateTime? apiDate;
  DateTime? apiTime;

  ApiDateTime({
    this.apiDate,
    this.apiTime,
  });
  ApiDateTime copyWith({
    DateTime? apiDate,
    DateTime? apiTime,
  }) =>
      ApiDateTime(
        apiDate: apiDate ?? this.apiDate,
        apiTime: apiTime ?? this.apiTime,
      );
}
