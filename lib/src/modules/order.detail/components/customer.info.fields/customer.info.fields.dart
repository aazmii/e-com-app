import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/models/order/order.dart';

class CustomerInfoFields extends ConsumerWidget {
  const CustomerInfoFields({super.key, this.order});
  final Order? order;
  @override
  Widget build(BuildContext context, ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 80),
      child: Row(
        children: [
          SizedBox(
              height: textFieldHeight,
              width: 150,
              child: SizedBox(
                child: TextField(
                  onChanged: order?.onNameChange,
                  decoration: const InputDecoration(
                    hintText: 'Customer Name',
                  ),
                ),
              )),
          const SizedBox(width: 5),
          SizedBox(
              height: textFieldHeight,
              width: 150,
              child: TextField(
                onChanged: order?.onPhoneChange,
                decoration: const InputDecoration(hintText: 'Phone Number'),
              )),
          const SizedBox(width: 5),
          SizedBox(
            height: textFieldHeight,
            width: 150,
            child: TextField(
              onChanged: order?.onLoyalityCardChanged,
              decoration: const InputDecoration(hintText: 'Loyality Card'),
            ),
          ),
        ],
      ),
    );
  }
}
