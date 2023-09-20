import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pos_sq/src/constants/src/api.const.dart';

class CustomImage extends StatelessWidget {
  CustomImage({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    final fullUrl = '$imageBaseLink$imageUrl';
    if (imageUrl == null) return defaultImage;
    if (imageUrl!.isEmpty) return defaultImage;

    return ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: CachedNetworkImage(
        imageUrl: fullUrl,
        placeholder: (context, url) => SvgPicture.asset(
          'assets/images/placeholder.image.svg',
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        fit: BoxFit.cover,
        width: 120,
        height: 70,
      ),
    );
  }

  final defaultImage = SizedBox(
    width: 120,
    height: 70,
    child: SvgPicture.asset(
      'assets/images/placeholder.image.svg',
    ),
  );
}
