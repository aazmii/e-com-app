import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

// ignore: must_be_immutable
class DigitalPaymentDropdown extends ConsumerWidget {
  final VoidCallback? onTap;
  final Function(DigitalPaymentType? t)? onChange;
  final bool isSelected;
  DigitalPaymentDropdown({
    super.key,
    this.onTap,
    this.onChange,
    required this.isSelected,
    required this.dropdownValue,
  });
  DigitalPaymentType dropdownValue;

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
      child: DropdownButton<DigitalPaymentType>(
        onTap: onTap,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        value: dropdownValue,
        // elevation: 16,
        isDense: true,
        iconSize: 16,
        focusColor: Colors.transparent,
        style: context.bodyMedium.copyWith(
          letterSpacing: 0.1,
        ),
        // style: const TextStyle(
        //   color: Colors.black,
        // ),
        onChanged: onChange,
        items: DigitalPaymentType.values.map(
          (DigitalPaymentType type) {
            return DropdownMenuItem<DigitalPaymentType>(
              value: type,
              child: Text(
                type.name.capitalizeFirstofEach,
                style: const TextStyle(fontSize: 12),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
