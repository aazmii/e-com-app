part of '../extensions.dart';

extension ListExt on List {
  bool hasDuplicates() => length != toSet().length;

  List getDuplicates() => where((x) => !toSet().remove(x)).toList();
}
