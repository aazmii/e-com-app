part of '../extensions.dart';

extension DurationUtils on Duration {
  hourMinuteSecond(Duration d) {
    // int years = d.inDays ~/ 365;
    // int months = (d.inDays % 365) ~/ 30;
    // int weeks = (d.inDays % 30) ~/ 7;
    // int days = d.inDays % 7;
    int hours = d.inHours % 24;
    int minutes = d.inMinutes % 60;
    int seconds = d.inSeconds % 60;
    if (hours == 0) {
      // return '${minutes.toString().padLeft(2, '0')}m:${seconds.toString().padLeft(2, '0')}s';
      return '${minutes}m:${seconds.toString().padLeft(2, '0')}s';
    }
    // return '${hours.toString().padLeft(2, '0')}h:${minutes.toString().padLeft(2, '0')}m:${seconds.toString().padLeft(2, '0')}s';
    return '${hours}h:${minutes.toString().padLeft(2, '0')}m:${seconds.toString().padLeft(2, '0')}s';
  }

  Duration? parseDuration(String durationString) {
    List<String> components = durationString.split(':');
    if (components.length < 2) return null;
    int hours = int.parse(components[0]);
    int minutes = int.parse(components[1]);
    return Duration(hours: hours, minutes: minutes,  );
  }
}
