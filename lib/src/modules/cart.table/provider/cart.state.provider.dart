import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CartState { expnaded, collapsed }

final cartStateProvider = NotifierProvider<CartStateProvider, CartState>(
  CartStateProvider.new,
);

class CartStateProvider extends Notifier<CartState> {
  @override
  CartState build() => CartState.expnaded;

  void toggleCartState() => state == CartState.collapsed
      ? state = CartState.expnaded
      : state = CartState.collapsed;

}
