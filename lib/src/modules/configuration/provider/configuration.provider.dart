import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/api/time.api.dart';
import 'package:pos_sq/src/app.config/app.config.dart';
import 'package:pos_sq/src/app.db/tables/config.table.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

Config? config;
final configProvider = AsyncNotifierProvider<ConfiurationProvider, Config?>(
    ConfiurationProvider.new);

class ConfiurationProvider extends AsyncNotifier<Config?> {
  late DateTime currentDate;
  @override
  Future<Config?> build() async {
    currentDate = await TimeApi.getTime() ?? DateTime.now();
    config = await ConfigTable.getConfig();
    if (config == null) {
      await ConfigTable.insertConfig(appConfig(currentDate));
    } else {
      _updateLicenseDateInLocalDb(config!);
    }
    state = AsyncData(config);
    return state.value;
  }

  Future _updateLicenseDateInLocalDb(Config config) async {
    if (config.lastUpdate!.isSameDay(currentDate)) return;

    await ConfigTable.updateValue(
      fieldName: 'daysLeftToExpireLicense',
      value: config.companyLicenseExpireDate!
          .difference(currentDate)
          .inDays
          .toString(),
    ).then((value) {
      ConfigTable.updateValue(
        fieldName: 'lastUpdate',
        value: currentDate.toIso8601String(),
      );
    });
  }

  bool isLicenseExpired() {
    if (state.value == null) return false;
    if (state.value!.companyLicenseExpireDate == null) return true;
    final daysLeft = _daysLeftToExpireLicense(
      now: currentDate,
      expireDate: state.value!.companyLicenseExpireDate!,
    );
    return daysLeft >= 0;
  }

  int _daysLeftToExpireLicense({
    required DateTime now,
    required DateTime expireDate,
  }) {
    return expireDate.difference(now).inDays;
  }
}
