import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/extensions/src/date.time.dart';
import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';
import 'package:pos_sq/src/modules/configuration/provider/configuration.provider.dart';

Future<void> showConfigDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => const _DialogBody(),
  );
}

class _DialogBody extends ConsumerWidget {
  const _DialogBody();
  final _titleStyle = const TextStyle(
    fontWeight: FontWeight.w500,
  );
  @override
  Widget build(BuildContext context, ref) {
    final config = ref.watch(configProvider).value;
    return AlertDialog(
      title: const Center(child: Text('App Configuration')),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: SizedBox(
        width: 400,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: configTable(config),
          ),
        ),
      ),
      actions: [
        
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    );
  }

  Table configTable(Config? config) {
    final leftTime = config?.companyLicenseExpireDate != null
        ? config!.companyLicenseExpireDate!.difference(DateTime.now()).inDays
        : '';
    final licenseExpireDate = config?.companyLicenseExpireDate != null
        ? config!.companyLicenseExpireDate!.toFormattedDateTime
        : '';
    return Table(
      columnWidths: const {0: FlexColumnWidth(1)},
      border: const TableBorder(horizontalInside: BorderSide(width: 1)),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: [
            Text(
              'Company Name',
              style: _titleStyle,
            ),
            Text(config?.companyName ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Company Short Name',
              style: _titleStyle,
            ),
            Text(config?.companyShortName ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Company Address',
              style: _titleStyle,
            ),
            Text(config?.companyAddress ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Company City',
              style: _titleStyle,
            ),
            Text(
              config?.companyCity ?? 'unknown',
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Company Country',
              style: _titleStyle,
            ),
            Text(config?.companyCountry ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Company Post Code',
              style: _titleStyle,
            ),
            Text(config?.companyPostCode ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Licese Expire date',
              style: _titleStyle,
            ),
            Text(
              licenseExpireDate ?? '',
              style: _titleStyle.copyWith(color: Colors.red),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Day(s) Left',
              style: _titleStyle,
            ),
            Text(
              '$leftTime days',
              style: _titleStyle.copyWith(color: Colors.red),
            ),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Invoice Header text',
              style: _titleStyle,
            ),
            Text(config?.companyInvoiceHeaderText ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            Text(
              'Invoice Footer text',
              style: _titleStyle,
            ),
            Text(config?.companyInvoiceFooterText ?? 'unknown'),
          ],
        ),
      ],
    );
  }
}
