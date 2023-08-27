import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';

final layoutProvider =
    NotifierProvider<LayoutProvider, AppLayout>(LayoutProvider.new);

class LayoutProvider extends Notifier<AppLayout> {
  @override
  AppLayout build() => AppLayout.horizontalView;
  void toggle() {
    if (state == AppLayout.horizontalView) {
      state = AppLayout.verticalView;
    } else {
      state = AppLayout.horizontalView;
    }
  }
}
