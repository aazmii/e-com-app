import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/models/order/order.dart';

class CustomerInfoFields extends ConsumerWidget {
  const CustomerInfoFields({super.key, this.order});
  final Order? order;
  @override
  Widget build(BuildContext context, ref) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0, right: 80),
      child: Row(
        children: [
          SizedBox(
              height: textFieldHeight,
              width: 150,
              child: SizedBox(
                child: TextField(
                  // onChanged: order?.onNameChange,
                  decoration: InputDecoration(
                    hintText: 'Customer Name',
                  ),
                ),
              )),
          SizedBox(width: 5),
          SizedBox(
              height: textFieldHeight,
              width: 150,
              child: TextField(
                // onChanged: order?.onPhoneChange,
                decoration: InputDecoration(hintText: 'Phone Number'),
              )),
          SizedBox(width: 5),
          SizedBox(
            height: textFieldHeight,
            width: 150,
            child: TextField(
              // onChanged: order?.onLoyalityCardChanged,
              decoration: InputDecoration(hintText: 'Loyality Card'),
            ),
          ),
        ],
      ),
    );
  }
}
