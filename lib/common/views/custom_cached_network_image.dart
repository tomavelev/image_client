import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_client/common/global_di.dart';

//It is common to wrap externally used packages in - in-app components, so their potential replacement may be in one place
class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;

  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) => GlobalDI.isTest
      ? Container(
          color: Colors.black26,
          child: const Text("Test Image"),
        )
      : CachedNetworkImage(
          imageUrl: imageUrl,
        );
}
