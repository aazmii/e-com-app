import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class DataNotFoundWidget extends StatelessWidget {
  const DataNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '🔍 No categories are found',
        style: context.titleMedium,
      ),
    );
  }
}
