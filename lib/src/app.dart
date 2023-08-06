import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/modules/configuration/view/config.page.dart';

import 'modules/configuration/view/config.dialog.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS Deskop'),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ConfigPage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Home ',
            //   style: Theme.of(context).textTheme.displayMedium,
            // ),

            IconButton(
              onPressed: () async {
                try {} catch (e) {
                  debugPrint('$e');
                }
              },
              icon: const Icon(FontAwesomeIcons.clock),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () async => showConfigDialog(context),
        child: const Text(
          'App Configuration',
        ),
      ),
    );
  }
}
