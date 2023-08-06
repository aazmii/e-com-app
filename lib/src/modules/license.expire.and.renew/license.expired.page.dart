import 'dart:io';

import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class LicenseExpiredPage extends StatelessWidget {
  LicenseExpiredPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('POS DESKTOP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Your license seems to be expired. Please renew your license',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(height: 20),
            const Text(
              licenseExpiredMsg,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              side:
                  BorderSide(width: 1.0, color: Theme.of(context).primaryColor),
            ),
            onPressed: () {
              exit(0);
            },
            child: const Text('Quit app'),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            style: _style,
            onPressed: () {},
            child: const Text('Renew license'),
          ),
        ],
      ),
    );
  }

  final _style = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
