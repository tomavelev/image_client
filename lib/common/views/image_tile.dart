import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../model/pixabay_image.dart';

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
          child: CachedNetworkImage(
            imageUrl: image.previewURL ?? '',
          ),
        ),
      );
}
