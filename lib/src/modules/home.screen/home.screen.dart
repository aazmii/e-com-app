import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/app.db/app.db.dart';
import 'package:pos_sq/src/constants/constants.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/mother.categories.provider.dart';
import 'package:pos_sq/src/modules/home.screen/layouts/horizontal.view.dart';
import 'package:pos_sq/src/providers/orientation.provider.dart';

import '../catgory.and.product/model/category/category.dart';

Map<String, dynamic>? map;

class SalesScreen extends ConsumerWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isVertical = ref.watch(layoutProvider) == AppLayout.verticalView;

    return SafeArea(
      child: GestureDetector(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DriftDbViewer(db),
                    ),
                  ),
                  icon: const Icon(Icons.remove_red_eye_sharp),
                ),
                IconButton(
                  onPressed: () async {
                    final categoryDataList = await db.getCategories();
                    final categories = categoryDataList
                        .map((x) => Category.fromTableData(x))
                        .toList();
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
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
