import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';

class CartStateButton extends ConsumerWidget {
  const CartStateButton({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context, ref) {
    final state = ref.watch(cartStateProvider);
    return SizedBox(
      width: 120,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.blue.shade700),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                color: Colors.blue.shade300,
                width: 2.0,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(state == CartState.collapsed ? 'Expand' : 'Collapse'),
      ),
    );
  }
}
