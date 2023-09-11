import 'package:flutter/material.dart';
import 'package:pos_sq/src/modules/order.detail/components/header.dart';

class OrderDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const OrderDetailAppBar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // your customization here
      title: const DispositionHeader(),

      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    );
  }
}
