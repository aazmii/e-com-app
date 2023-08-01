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
              leading: const Icon(Icons.settings),
              onTap: ref.read(configurationProvider.notifier).onPressedInsert,
              title: const Text('Configure'),
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              onTap: ref.read(configurationProvider.notifier).deleteTable,
              title: const Text('delete configure table'),
            ),
            ListTile(
              leading: const Icon(Icons.download),
              onTap: ref.read(configurationProvider.notifier).getConfiguaration,
              title: const Text('get app configuration'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Configuration'),
      ),
      body: const SizedBox(),
      floatingActionButton: ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('Back'),
      ),
    );
  }
}
