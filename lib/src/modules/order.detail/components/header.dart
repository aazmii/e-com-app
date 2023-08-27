import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class DispositionHeader extends StatelessWidget {
  const DispositionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'XYZ enterprize ltd',
          style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          '1 kazi nazrul Islam Ave. Dhaka',
          style: context.titleMedium,
        ),
      ],
    );
  }
}
