import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
 import 'package:pos_sq/src/modules/configuration/model/config.table.model/config.dart';

Table makeConfigTable(Config? config) {
    const titleStyle = TextStyle(
    fontWeight: FontWeight.w500,
  );
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
            const Text(
              'Company Name',
              style: titleStyle,
            ),
            Text(config?.companyName ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Company Short Name',
              style: titleStyle,
            ),
            Text(config?.companyShortName ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Company Address',
              style: titleStyle,
            ),
            Text(config?.companyAddress ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Company City',
              style: titleStyle,
            ),
            Text(
              config?.companyCity ?? 'unknown',
            ),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Company Country',
              style: titleStyle,
            ),
            Text(config?.companyCountry ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Company Post Code',
              style: titleStyle,
            ),
            Text(config?.companyPostCode ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Licese Expire date',
              style: titleStyle,
            ),
            Text(
              licenseExpireDate ?? '',
              style: titleStyle.copyWith(color: Colors.red),
            ),
          ],
        ),
        TableRow(
          children: [
           const  Text(
              'Day(s) Left',
              style: titleStyle,
            ),
            Text(
              '$leftTime days',
              style: titleStyle.copyWith(color: Colors.red),
            ),
          ],
        ),
        TableRow(
          children: [
            const Text(
              'Invoice Header text',
              style: titleStyle,
            ),
            Text(config?.companyInvoiceHeaderText ?? 'unknown'),
          ],
        ),
        TableRow(
          children: [
           const Text(
              'Invoice Footer text',
              style: titleStyle,
            ),
            Text(config?.companyInvoiceFooterText ?? 'unknown'),
          ],
        ),
      ],
    );
  }