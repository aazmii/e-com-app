import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';
import 'package:pos_sq/src/constants/src/ui.consts.dart';
import 'package:pos_sq/src/extensions/extensions.dart';
import 'package:pos_sq/src/modules/catgory.and.product/model/product.dart';
import 'package:pos_sq/src/modules/catgory.and.product/provider/wide.view.providers/selected.category.id.provider.dart';

class ProductCard extends ConsumerWidget {
  const ProductCard({
    super.key,
    required this.product,
    this.onSelect,
    required this.isLastItem,
  });
  final bool isLastItem;
  final Product product;
  final VoidCallback? onSelect;
  @override
  Widget build(BuildContext context, ref) {
    final parentName = product.categoryLabel!.split('/').last;
    return InkWell(
      splashColor: context.secondaryColor,
      onTap: onSelect,
      child: Padding(
        padding: EdgeInsets.only(bottom: isLastItem ? 120 : 0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: expandDuration),
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: ref.watch(selectedCategoryProvider)?.label == parentName
                ? 12
                : 2,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 2,
              color: ref.watch(selectedCategoryProvider)?.label == parentName
                  ? Colors.orange
                  : Colors.transparent,
            ),
          ),
          height: ref.watch(selectedCategoryProvider)?.label == parentName
              ? categoryHeight - 10
              : categoryHeight,
          child: CardContent(
            product: product,
          ),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Card(
            // child: ProductImage(
            //   productUrl: (product.images == null || product.images!.isEmpty)
            //       ? null
            //       : product.images!.first.image,
            // ),
          ),
        ),
        Text(
          // product.name ?? '',
          '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        // if (product.price != product.discountPrice)
        //   Text(
        //     '৳ ${product.price}',
        //     style: context.titleSmall.copyWith(
        //       fontWeight: FontWeight.bold,
        //       decoration: TextDecoration.lineThrough,
        //       color: Colors.red,
        //     ),
        //   ),
        Text(
          'TK.${product.price}',
          style: context.titleSmall.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, this.productUrl});
  final String? productUrl;
  @override
  Widget build(BuildContext context) {
    final fullUrl = '$imageBaseLink$productUrl';
    if (productUrl == null) return defaultImage;
    if (productUrl!.isEmpty) return defaultImage;

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        imageUrl: fullUrl,
        placeholder: (context, url) => const SizedBox(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
        width: 120,
        height: 70,
      ),
    );
  }

  final defaultImage = const SizedBox(width: 120, height: 70, child: emptyWidget
      // child: SvgPicture.asset(
      //   'assets/images/Poke-bowl-pana.svg',
      // ),
      );
}
