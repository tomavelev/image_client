import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_client/common/my_app.dart';

import '../../common/env.dart';
import '../../common/model/pixabay_image.dart';
import '../../main.dart';

class ImageTile extends StatelessWidget {
  final PixabayImage image;

  const ImageTile(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    final env = getIt<Env>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => context.push(
          "/details",
          extra: image,
        ),
        child: ListTile(
            tileColor: Colors.black12,
            title: CachedNetworkImage(
              imageUrl: image.previewURL ?? '',
            )),
      ),
    );
  }
}
