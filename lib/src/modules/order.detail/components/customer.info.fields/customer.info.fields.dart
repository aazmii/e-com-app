import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';

class CustomerInfoFields extends ConsumerWidget {
  const CustomerInfoFields({super.key});

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
                decoration: InputDecoration(hintText: 'Phone Number'),
              )),
          SizedBox(width: 5),
          SizedBox(
            height: textFieldHeight,
            width: 150,
            child: TextField(
              decoration: InputDecoration(hintText: 'Loyality Card'),
            ),
          ),
        ],
      ),
    );
  }
}
