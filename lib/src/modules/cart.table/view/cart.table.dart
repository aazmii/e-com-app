import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

class CartTable extends StatelessWidget {
  CartTable({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder.all(color: context.secondaryColor),
      columns: headerDataColumn,
      rows: dataRows,
    );
  }
}

final dataRows = <DataRow>[
  const DataRow(
    cells: <DataCell>[
      DataCell(SizedBox(width: 30, child: Text('1'))),
      DataCell(Text('Pasta')),
      DataCell(Text('3')),
      DataCell(Text('3')),
      DataCell(Text('3')),
      DataCell(Text('3')),
      DataCell(Text('3')),
    ],
  ),
];
final headerDataColumn = <DataColumn>[
  const DataColumn(
    label: Text(
      'Sl ',
      style: TextStyle(fontStyle: FontStyle.italic),
    ),
  ),
  const DataColumn(
    label: Expanded(
      child: Text(
        'Item Name  ',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
    numeric: true,
  ),
  const DataColumn(
    label: Expanded(
      child: Text(
        'Qnt ',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  ),
  const DataColumn(
    label: Expanded(
      child: Text(
        'Unit Price',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  ),
  const DataColumn(
    label: Expanded(
      child: Text(
        'Total Price',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  ),
  const DataColumn(
    label: Expanded(
      child: Text(
        'Vat',
        style: TextStyle(fontStyle: FontStyle.italic),
      ),
    ),
  ),
  const DataColumn(
    label: Expanded(
      child: SizedBox.shrink(),
    ),
  ),
];
