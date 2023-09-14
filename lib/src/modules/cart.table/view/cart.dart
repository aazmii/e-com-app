import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos_sq/src/components/buttons/custom.square.button.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/calculation/provider/calculation.provider.dart';
import 'package:pos_sq/src/modules/order.detail/models/item.dart';
import 'package:pos_sq/src/modules/cart.table/cart.components.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.state.provider.dart';
import 'package:pos_sq/src/modules/cart.table/provider/cart.stream.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.sl.provider.dart';
import 'components/collapse.button.dart';
import 'components/collapsed.view.dart';

final _flexes = [0, 3, 2, 2, 2, 1, 1];

class Cart extends ConsumerWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.watch(orderSlProvider.notifier);
    return ref.watch(cartStream).when(
        data: (items) {
          return ref.watch(cartStateProvider) == CartState.collapsed
              ? const CollapsedView()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (items.isNotEmpty)
                      ...List.generate(
                        items.length,
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
                                item: items[i],
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      ),
                    AddNewItemRow(flexes: _flexes, indexNo: items.length),
                    const Divider(),
                    CustomTableRow(
                      title: 'Gross Total',
                      value: notifier.grossTotal(items),
                    ),
                    const Divider(),
                    CustomTableRow(
                      title: 'Disocunt',
                      child: SizedBox(
                        height: textFieldHeight,
                        child: TextField(
                          onChanged: ref
                              .read(calculationProvider.notifier)
                              .onDiscountAmountChange,
                        ),
                      ),
                    ),
                    const Divider(),
                    const CustomTableRow(title: 'Total Vat', value: 0.00),
                    const Divider(),
                    const CustomTableRow(
                      title: 'Total Tax',
                      value: 0.00,
                    ),
                    const Divider(),
                    const CustomTableRow(
                      title: 'Net Total',
                      value: 23.42,
                    ),
                    const Divider(),
                    CartStateButton(
                      onPressed:
                          ref.read(cartStateProvider.notifier).toggleCartState,
                    ),
                  ],
                );
        },
        error: (e, s) => Text('Error : $e'),
        loading: () => const Text('Initializing cart'));
  }
}

class _CustomRow extends ConsumerWidget {
  const _CustomRow({
    required this.sl,
    required this.flexes,
    required this.item,
  });
  final Item item;
  final int sl;

  final List<int> flexes;

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.watch(orderSlProvider.notifier);
    final price = item.price ?? 0;
    final count = item.count ?? 0;
    final totalPrice = price * count;
    return Row(
      children: [
        Expanded(
          flex: flexes[0],
          child: Text('$sl'),
        ),
        Expanded(
          flex: flexes[1],
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(item.name ?? ''),
          ),
        ),
        width10,
        Expanded(
          flex: flexes[2],
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: ColoredButton(
                    color: Colors.red,
                    child: const Icon(Icons.remove),
                    onPressed: () async {
                      return notifier.onQuantityRemove(item);
                    },
                  ),
                ),
              ),
              width5,
              Text(
                '$count',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              width5,
              Expanded(
                child: Center(
                  child: ColoredButton(
                    color: Colors.green,
                    child: const Icon(Icons.add),
                    onPressed: () async {
                      return notifier.onQuantityAdd(item, count + 1);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        //unit price
        Expanded(
          flex: flexes[3],
          child: Align(
            alignment: Alignment.center,
            child: Text('$price'),
          ),
        ),
        //total price

        Expanded(
          flex: flexes[4],
          child: Align(
            alignment: Alignment.center,
            child: Text('$totalPrice'),
          ),
        ),
        Expanded(
          flex: flexes[5],
          child: const Align(
            alignment: Alignment.centerRight,
            child: Text('0.00'),
          ),
        ),
        Flexible(
          flex: flexes[6],
          child: Align(
            alignment: Alignment.center,
            child: CustomButton(
              iconColor: Colors.black54,
              onPressed: () async => notifier.removeItemFromCart(item),
              icon: FontAwesomeIcons.xmark,
            ),
          ),
        ),
      ],
    );
  }
}
