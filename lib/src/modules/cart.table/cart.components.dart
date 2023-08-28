import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';

final _tableHeaders = [
  'SL',
  'Item Name',
  'Qnt',
  'Unit Price',
  'Total Price',
  '     Vat',
  ''
];

class TableTitles extends StatelessWidget {
  const TableTitles({
    super.key,
    required this.flexes,
  });
  final List<int> flexes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: context.secondaryColor,
      child: Row(
        children: List.generate(
          _tableHeaders.length,
          (i) {
            return Expanded(
              flex: flexes[i],
              child: Align(
                alignment:
                    i == 0 ? Alignment.centerLeft : Alignment.centerRight,
                child: Text(
                  _tableHeaders[i],
                  textAlign: TextAlign.center,
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomTableRow extends StatelessWidget {
  const CustomTableRow({
    super.key,
    this.title,
    this.value,
  });
  final String? title;
  final double? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text('BDT $value'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.cyan, child: const SizedBox.shrink()),
        ),
      ],
    );
  }
}

class AddNewItemRow extends StatelessWidget {
  const AddNewItemRow({
    super.key,
    required this.flexes,
  });
  final List<int> flexes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: flexes[0],
          child: const Text('2'),
        ),
        Expanded(
          flex: flexes[1],
          child: const SizedBox(
            height: textFieldHeight,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Name',
              ),
            ),
          ),
        ),
        width10,
        Expanded(
          flex: flexes[2],
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: QuantityButton(
                    backgroundColor: Colors.red,
                    iconColor: Colors.white,
                    icon: Icons.remove,
                    onPressed: () => {},
                  ),
                ),
              ),
              width5,
              const Text(
                '4',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              width5,
              Expanded(
                child: Center(
                  child: QuantityButton(
                    backgroundColor: Colors.green,
                    iconColor: Colors.white,
                    icon: Icons.add,
                    onPressed: () => {},
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: flexes[3],
          child: const SizedBox(
            height: textFieldHeight,
            child: TextField(),
          ),
        ),
        Expanded(
          flex: flexes[4],
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '0.00',
            ),
          ),
        ),
        Expanded(
          flex: flexes[5],
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text(
              '0.00',
            ),
          ),
        ),
        Flexible(
          flex: flexes[6],
          child: Align(
            alignment: Alignment.center,
            child: CustomButton(
              iconColor: Colors.black54,
              onPressed: () {},
              icon: FontAwesomeIcons.xmark,
            ),
          ),
        ),
      ],
    );
  }
}
