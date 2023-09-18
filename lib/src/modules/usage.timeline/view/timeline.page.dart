import 'package:flutter/material.dart';

import 'components/action.card.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Timeline')),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActionCard(),
            // SizedBox(width: 20),
            // ApiCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {}, child: const Icon(Icons.delete)),
    );
  }
}
