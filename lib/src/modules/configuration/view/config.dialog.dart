import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';
import 'package:pos_sq/src/modules/configuration/view/config.table.dart';

Future<void> showConfigDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => const _DialogBody(),
  );
}

class _DialogBody extends ConsumerWidget {
  const _DialogBody();

  @override
  Widget build(BuildContext context, ref) {
    final config = ref.watch(configProvider).value;
    return AlertDialog(
      title: const Center(child: Text('App Configuration')),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        width: 400,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: makeConfigTable(config),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }
}
