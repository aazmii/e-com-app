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
  static String get itemName => 'itemName';
  static String get itemPrice => 'itemPrice';
  static String get itemVat => 'itemVat';
  static String get customerName => 'name';
  static String get customerPhone => 'phone';
  static String get customerLoyalityCard => 'loyalityCardd';

}
