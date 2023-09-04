import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

// ignore: must_be_immutable
class DigitalPaymentDropdown extends ConsumerWidget {
  final VoidCallback? onTap;
  final Function(DigitalPaymentType? t)? onChange;
  final bool? isSelected;
  DigitalPaymentDropdown({
    super.key,
    this.onTap,
    this.onChange,
    this.isSelected,
    required this.dropdownValue,
  });
  DigitalPaymentType dropdownValue;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: isSelected! ? 2 : 0,
          color: isSelected! ? context.primaryColor : Colors.transparent,
        ),
      ),
      child: DropdownButton<DigitalPaymentType>(
        onTap: onTap,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        value: dropdownValue,
        // elevation: 16,
        isDense: true,
        iconSize: 0,
        focusColor: Colors.transparent,
        style: context.bodyMedium.copyWith(
          fontWeight: FontWeight.bold,
        ),
        // style: const TextStyle(
        //   color: Colors.black,
        // ),
        onChanged: onChange,
        items: DigitalPaymentType.values.map(
          (DigitalPaymentType type) {
            return DropdownMenuItem<DigitalPaymentType>(
              value: type,
              child: Text(type.name),
            );
          },
        ).toList(),
      ),
    );
  }
}
