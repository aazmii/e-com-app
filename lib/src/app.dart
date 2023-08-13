import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/modules/configuration/view/config.page.dart';

import 'modules/usage.timeline/view/timeline.page.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POS Deskop'),
        elevation: 0.0,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ConfigScreen();
                    },
                  ),
                );
              },
              child: const Text('App Configuration'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TimelineView();
                    },
                  ),
                );
              },
              icon: const Icon(
                FontAwesomeIcons.clock,
                size: 16,
              ),
              label: const Text('App Timeline'),
            ),
          ],
        ),
      ),
    );
  }
}
