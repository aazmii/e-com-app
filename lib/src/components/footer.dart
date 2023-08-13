import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class Footer extends ConsumerWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      height: 40,
      width: double.infinity,
      color: context.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: context.isMobile
                      ? const EdgeInsets.all(0)
                      : const EdgeInsets.all(8),
                ),
                child: const Text('GALLERY'),
              ),
              width10,
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: context.isMobile
                      ? const EdgeInsets.all(0)
                      : const EdgeInsets.all(8),
                ),
                child: const Text('TESTIMONIALS'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text(
              '${DateTime.now().formatted()} © BAR-B-Q Tonight',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
