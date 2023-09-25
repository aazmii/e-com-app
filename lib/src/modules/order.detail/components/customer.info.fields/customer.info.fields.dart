import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/tables/order.table.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/modules/order.detail/provider/order.provider.dart';
import 'package:pos_sq/src/providers/providers.dart';

class CustomerInfoFields extends ConsumerWidget {
  const CustomerInfoFields({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.watch(orderProvider.notifier);
    return FutureBuilder(
      future: OrderTable.getOrderBySl(ref.watch(orderProvider)!),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return emptyWidget;
        final order = snapshot.data;
        ref.watch(tecProvider(Fields.customerName)).text =
            order?.customerName ?? '';
        ref.watch(tecProvider(Fields.customerPhone)).text =
            order?.customerPhone ?? '';
        ref.watch(tecProvider(Fields.customerLoyalityCard)).text =
            order?.loyalityCard ?? '';
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 80),
          child: Row(
            children: [
              SizedBox(
                  height: textFieldHeight,
                  width: 150,
                  child: SizedBox(
                    child: TextField(
                      controller: ref.watch(tecProvider(Fields.customerName)),
                      onChanged: (s) async => await notifier
                          .onCustomerFieldChange(s, CustomerInfoType.name),
                      decoration: const InputDecoration(
                        hintText: 'Customer Name',
                      ),
                    ),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                  height: textFieldHeight,
                  width: 150,
                  child: TextField(
                    controller: ref.watch(tecProvider(Fields.customerPhone)),
                    onChanged: (s) async => await notifier
                        .onCustomerFieldChange(s, CustomerInfoType.phone),
                    decoration: const InputDecoration(hintText: 'Phone Number'),
                  )),
              const SizedBox(width: 5),
              SizedBox(
                height: textFieldHeight,
                width: 150,
                child: TextField(
                  controller:
                      ref.watch(tecProvider(Fields.customerLoyalityCard)),
                  onChanged: (s) async => await notifier.onCustomerFieldChange(
                      s, CustomerInfoType.loyalityCard),
                  decoration: const InputDecoration(hintText: 'Loyality Card'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
