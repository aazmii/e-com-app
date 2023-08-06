import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String? get toFormattedDateTime {
    if (toFormattedDate == null || toFormattedTime == null) return null;
    return '$toFormattedDate, $toFormattedTime';
  }

  bool isSameDay(DateTime b) =>
      year == b.year && month == b.month && day == b.day;
  String? get toFormattedDate {
    try {
      return DateFormat('dd-MM-yyyy').format(this);
      // return DateFormat('dd, MMM, yy').format(this);
    } catch (e) {
      return null;
    }
  }

  String? get invoiceFormat => DateFormat.yMd().add_jm().format(this);

  String? get toFormattedTime {
    try {
      // return DateFormat(format).format(this);
      return DateFormat.jm().format(this);
    } catch (e) {
      return null;
    }
  }
}
