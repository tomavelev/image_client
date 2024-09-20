import 'package:flutter/material.dart';

import '../model/pixabay_image.dart';
import 'custom_cached_network_image.dart';

class ImageTile extends StatelessWidget {
  final PixabayImage image;
  final VoidCallback? onTap;

  const ImageTile(
    this.image, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: InkWell(
          onTap: onTap ??
              () => Navigator.of(context).pushNamed(
                    "/details",
                    arguments: image,
                  ),
          child: CustomCachedNetworkImage(
            imageUrl: image.previewURL ?? '',
          ),
        ),
      );
}
