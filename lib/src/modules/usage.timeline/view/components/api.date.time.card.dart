import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/usage.timeline/provider/api.dart';

class ApiCard extends ConsumerWidget {
  const ApiCard({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final provider = ref.watch(apiDateTimeProvider);
    final notifier = ref.watch(apiDateTimeProvider.notifier);

    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Text(
            'Api date time ',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 20),
          DataTable(
            columnSpacing: 10,
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  '      Api Date',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  '    Api Time',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  '     ',
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
                          onPressed: () => notifier.date(context, true),
                          icon: const Icon(FontAwesomeIcons.xmark),
                        ),
                        TextButton(
                          onPressed: () async => notifier.date(context),
                          child: provider.apiDate != null
                              ? Text(provider.apiDate!.fullDate())
                              : const Text('Date'),
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => notifier.time(context, true),
                          icon: const Icon(FontAwesomeIcons.xmark),
                        ),
                        TextButton(
                          onPressed: () async => notifier.time(context),
                          child: provider.apiTime != null
                              ? Text(provider.apiTime!.fullTime())
                              : const Text('Time'),
                        ),
                      ],
                    ),
                  ),
                  DataCell(
                    TextButton(
                      onPressed: () async {
                        ref.invalidate(apiDateTimeProvider);
                      },
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
