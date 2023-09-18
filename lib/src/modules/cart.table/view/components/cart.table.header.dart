import 'package:flutter/material.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/view/cart.dart';

TableRow tableHeader(BuildContext context) {
  return TableRow(
    decoration: BoxDecoration(
      color: context.secondaryColor,
    ),
    children: [
      Table(
        border: TableBorder.all(color: Colors.grey.shade400),
        columnWidths: columnTitleAndItemWidth,
        children: const [
          TableRow(
            children: [
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Sl',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Item name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Qty',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 3,
                    ),
                    child: Text(
                      'Unit Price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Total price',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Vat',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF495057),
                      ),
                    ),
                  ),
                ),
              ),
              TableCell(child: Center(child: Text('')))
            ],
          ),
        ],
      ),
    ],
  );
}
