import 'package:flutter/material.dart';
import 'package:pos_sq/src/modules/configuration/view/config.page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Configuration'),
            subtitle: const Text('App configuration & License'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ConfigScreen();
            })),
          ),
        ],
      ),
    );
  }
}
