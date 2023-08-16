import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/db/app.db.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/providers/orientation.provider.dart';

import '../catgory.and.product/provider/wide.view.providers/mother.categories.provider.dart';
import 'layouts/horizontal.view.dart';

class SalesScreen extends ConsumerWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isVertical = ref.watch(layoutProvider) == AppLayout.verticalView;
    return SafeArea(
      child: GestureDetector(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 8,
              right: 8,
            ),
            child: ref.watch(motherCategoriesProvider).when(
                  data: (data) {
                    return context.isWide
                        ? isVertical
                            ? emptyWidget
                            : HorizontalView(
                                motherCategories: data,
                              )
                        : emptyWidget;
                  },
                  error: (e, s) => const CenterText(
                    text: 'Oops..!\nSomething went wrong :(',
                  ),
                  loading: () => const CenterText(text: 'Loading..'),
                ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              // final product = ref
              //     .watch(motherCategoriesProvider)
              //     .value
              //     ?.first
              //     .products
              //     ?.first;
              final category = ref.watch(motherCategoriesProvider).value!.first;
             
              try {
                // await product!.saveInLocalDb(await LocalDB().database);
                await category.saveInLocalDb(await LocalDB().database);
              } catch (e) {
                print(e);
              }
            },
          ),
        ),
      ),
    );
  }
}

class CenterText extends StatelessWidget {
  const CenterText({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text ?? '',
        style: context.titleLarge,
      ),
    );
  }
}
