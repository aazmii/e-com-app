import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/cart.table/cart.components.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product/product.dart';
import 'package:pos_sq/src/providers/order.provider.dart';
import 'package:pos_sq/src/providers/order.stream.dart';

import 'components/collapse.button.dart';
import 'components/collapsed.view.dart';

final _flexes = [0, 3, 2, 2, 2, 1, 1];
final products = [Product(), Product(), Product()];

class Cart extends ConsumerWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(cartStateProvider) == CartState.collapsed
        ? const CollapsedView()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TableTitles(flexes: _flexes),
              ...ref.watch(orderProvider).when(
                    data: (order) {
                      if (order.items == null || order.items!.isEmpty) {
                        return [];
                      }
                      return List.generate(
                        products.length,
                        (i) => Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              color: i % 2 == 0
                                  ? Colors.transparent
                                  : Colors.white60,
                              child: _CustomRow(
                                flexes: _flexes,
                                sl: i + 1,
                                item: products[i],
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    },
                    error: (e, s) {
                      return [];
                    },
                    loading: () => [],
                  ),
              AddNewItemRow(flexes: _flexes),
              const Divider(),
              const CustomTableRow(
                title: 'Gross Total',
                value: 23.42,
              ),
              const Divider(),
              const CustomTableRow(
                title: 'Total Vat',
                value: 23.42,
              ),
              const Divider(),
              const CustomTableRow(
                title: 'Total Tax',
                value: 23.42,
              ),
              const Divider(),
              const CustomTableRow(
                title: 'Net Total',
                value: 23.42,
              ),
              const Divider(),
              CartStateButton(
                onPressed: ref.read(cartStateProvider.notifier).toggleCartState,
              ),
            ],
          );
  }
}

class _CustomRow extends ConsumerWidget {
  const _CustomRow({
    required this.sl,
    required this.flexes,
    required this.item,
  });
  final Product item;
  final int sl;

  final List<int> flexes;

  @override
  Widget build(BuildContext context, ref) {
    final double itemPrice = double.tryParse('0.0') ?? 0.0;

    return Row(
      children: [
        Expanded(
          flex: flexes[0],
          child: Text('$sl'),
        ),
        Expanded(
          flex: flexes[1],
          child: Text(item.label ?? ''),
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
          child: Align(
            alignment: Alignment.center,
            child: Text(itemPrice.formatted),
          ),
        ),
        Expanded(
          flex: flexes[4],
          child: Align(
            alignment: Alignment.center,
            child: Text(itemPrice.formatted),
          ),
        ),
        Expanded(
          flex: flexes[5],
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('23'),
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
