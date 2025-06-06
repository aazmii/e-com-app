import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/components/confirm.dialog.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/order.detail/models/order/order.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';

class DraftOrders extends ConsumerWidget {
  const DraftOrders({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return StreamBuilder(
      stream: OrderTable.watchOrders(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return emptyWidget;
        final draftOrders = snapshot.data;
        if (draftOrders!.length <= 1) return emptyWidget;

        return SizedBox(
          height: 40,
          child: ListView.builder(
            itemCount: draftOrders.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              if (draftOrders[i].sl == ref.watch(orderProvider)) {
                return emptyWidget;
              }
              return CustomChoiceChip(
                label: Order.fromTableData(draftOrders[i]).orderTime ??
                    DateTime.now(),
                isSelected: false,
                onSelect: () =>
                    ref.read(orderProvider.notifier).set(draftOrders[i].sl),
                onDelete: () async {
                  final res =
                      await confirmDialog(context, 'Delete from draft?');
                  if (res == null || !res) {
                    return;
                  } else {
                    await ref
                        .read(orderProvider.notifier)
                        .removeAndResetOrder(draftOrders[i].sl);
                  }
                },
              );
            },
          ),
        );
      },
    );
  }
}

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    this.label,
    required this.isSelected,
    this.onSelect,
    this.onDelete,
  });
  final bool isSelected;
  final DateTime? label;
  final VoidCallback? onSelect;
  final VoidCallback? onDelete;
  final mobileFontSize = 10;
  final mobileIconSize = 18;
  final _chipHeihgt = 30.0;
  final _chipWidth = 180.0;
  double chipHeight(BuildContext context) =>
      !context.isMobileWidth ? _chipHeihgt : _chipHeihgt - 10;
  double chipWidth(BuildContext context) =>
      !context.isMobileWidth ? _chipWidth : _chipWidth - 25;
  @override
  Widget build(BuildContext context) {
    final date = label?.toFormattedDate ?? '-';
    final time = label?.toFormattedTime ?? '-';
    return GestureDetector(
      onTap: onSelect,
      child: AnimatedContainer(
        margin:
            EdgeInsets.symmetric(horizontal: context.isMobileWidth ? 5 : 10),
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: context.theme.primaryColor,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    '$date, ',
                    style: TextStyle(
                      fontSize: context.isMobileWidth ? 10 : 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: context.isMobileWidth ? 10 : 16,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: onDelete,
                child: Icon(
                  Icons.close,
                  color: Colors.red,
                  size: context.isMobileWidth ? 18 : 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
