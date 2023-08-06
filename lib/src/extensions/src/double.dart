part of '../extensions.dart';

extension DoubleExt on double? {
  String get formatted => this == null
      ? ''
      : NumberFormat.currency(
          // locale: 'bn-IN',
          decimalDigits: 2,
          symbol: '',
        ).format(this);

  int get integerLenth => this!.toInt().toString().length ;
}
