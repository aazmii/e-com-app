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
