import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isCartVisibleProvider = StateProvider<bool>((ref) => true);

final tecProvider =
    NotifierProviderFamily<TECProvider, TextEditingController, String>(
  TECProvider.new,
);

class TECProvider extends FamilyNotifier<TextEditingController, String> {
  @override
  TextEditingController build(String arg) => TextEditingController();
}

final keyProvider =
    NotifierProviderFamily<_FormKeyProvider, GlobalKey<FormState>, int>(
        _FormKeyProvider.new);

class _FormKeyProvider extends FamilyNotifier<GlobalKey<FormState>, int> {
  @override
  build(arg) => GlobalKey<FormState>();
}

class Fields {
  static String get itemName => 'itemName';
  static String get itemPrice => 'itemPrice';
  static String get itemVat => 'itemVat';
  static String get customerName => 'name';
  static String get customerPhone => 'phone';
  static String get customerLoyalityCard => 'loyalityCardd';
}
