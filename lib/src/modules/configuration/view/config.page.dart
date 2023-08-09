import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';
import 'package:pos_sq/src/modules/configuration/view/config.table.dart';

class ConfigPage extends ConsumerWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final config = ref.watch(configProvider).value;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuration'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.withOpacity(0.2),
                ),
                width: 300,
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'App Configuration',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    makeConfigTable(config),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      LocalDB().deleteTableFromDB('config');
                    },
                    child: const Text('Delete Table'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
