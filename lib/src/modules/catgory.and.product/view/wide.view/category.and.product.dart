import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/components/data.not.found.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/category/category.dart';
import 'package:pos_sq/src/modules/catgory.and.product/view/wide.view/components/search.and.orientation.button.dart';

import '../../../catgory.and.product/provider/wide.view.providers/mother.categories.provider.dart';
import 'components/category.column.dart';
import 'components/saved.orders.dart';
import 'components/scroll.navigation.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    this.motherCategories,
  });
  final List<Category>? motherCategories;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: SearchAndOrientationButton()),
        const SliverToBoxAdapter(child: height10),
        const SliverPadding(padding: EdgeInsets.only(left: 10)),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Drafts',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )),
        const SliverToBoxAdapter(child: SavedOrders()),
        const SliverToBoxAdapter(child: height10),
        if (motherCategories == null || motherCategories!.isNotEmpty)
          const SliverToBoxAdapter(
            child: ScrollNavigationButotns(),
          ),
        const SliverToBoxAdapter(child: height10),
        SliverToBoxAdapter(
          child: SizedBox(
            height: context.height,
            child: (motherCategories == null || motherCategories!.isNotEmpty)
                ? ListView.builder(
                    controller: horizonalScrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: motherCategories!.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        child: Consumer(
                          builder: (context, ref, child) {
                            return SizedBox(
                              width: categoryWidth,
                              child: VerticalSCrollableCategoryColumn(
                                category: motherCategories![i],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  )
                : const DataNotFoundWidget(),
          ),
        ),
      ],
    );
  }
}
