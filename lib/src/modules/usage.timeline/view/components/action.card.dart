import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/usage.timeline/provider/provider.dart';

class ActionCard extends ConsumerWidget {
  const ActionCard({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final provider = ref.watch(activityProvider);

    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DataTable(
        columnSpacing: 10,
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              '     Login Date',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              '    Time',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          // DataColumn(
          //   label: Text(
          //     '     ',
          //     style: TextStyle(fontStyle: FontStyle.italic),
          //   ),
          // ),
          DataColumn(
            label: Text(
              '       ',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          ref.invalidate(activityProvider);
                        },
                        icon: const Icon(FontAwesomeIcons.xmark)),
                    TextButton(
                      onPressed: () async => ref
                          .read(activityProvider.notifier)
                          .onLoginDate(context),
                      child: provider.loginDate != null
                          ? Text(provider.loginDate!.fullDate())
                          : const Text('Date'),
                    ),
                  ],
                ),
              ),
              DataCell(
                TextButton(
                  onPressed: () async =>
                      ref.read(activityProvider.notifier).onLoginTime(context),
                  child: provider.loginTime != null
                      ? Text(provider.loginTime!.fullTime())
                      : const Text('Time'),
                ),
              ),
              // DataCell(
              //   TextButton(
              //     onPressed: () async {
              //       ref.invalidate(activityProvider);
              //     },
              //     child: const Text('Clear'),
              //   ),
              // ),
              DataCell(
                ElevatedButton(
                  onPressed: () =>
                      ref.read(activityProvider.notifier).saveLogin(),
                  child: const Text(' Log in  '),
                ),
              ),
            ],
          ),
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(
          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.red.shade400,
          //         ),
          //         onPressed: ref.read(activityProvider.notifier).onLogoutPress,
          //         child: const Text('Log out'),
          //       ),
          //     ),
          //     DataCell(
          //       TextButton(
          //         onPressed: () async =>
          //             ref.read(activityProvider.notifier).onLogoutDate(context),
          //         child: provider.logoutDate != null
          //             ? Text(provider.logoutDate!.fullDate())
          //             : const Text('Date'),
          //       ),
          //     ),
          //     DataCell(
          //       TextButton(
          //         onPressed: () async =>
          //             ref.read(activityProvider.notifier).onLogoutTime(context),
          //         child: provider.logoutTime != null
          //             ? Text(provider.logoutTime!.fullTime())
          //             : const Text('Time'),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
