import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';

class ConfigPage extends ConsumerWidget {
  const ConfigPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            ListTile(
              leading: const Icon(Icons.delete),
              onTap: ref.read(configProvider.notifier).deleteTable,
              title: const Text('delete configure table'),
            ),
            ListTile(
              leading: const Icon(Icons.download),
              onTap: ref.read(configProvider.notifier).getConfiguaration,
              title: const Text('get app configuration'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Configuration'),
      ),
      body: SizedBox(),
      floatingActionButton: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Back'),
      ),
    );
  }
}
