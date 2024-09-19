import 'package:flutter/material.dart';

import '../model/pixabay_image.dart';
import 'image_tile.dart';

typedef ItemBuilder<T> = Widget Function(BuildContext context, T item);

class ImageGridView extends StatelessWidget {
  final ScrollController? scrollController;
  final List<PixabayImage> data;
  final ItemBuilder<PixabayImage>? itemBuilder;

  const ImageGridView({
    this.scrollController,
    required this.data,
    this.itemBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200),
        itemBuilder: (context, index) => itemBuilder != null
            ? itemBuilder!(context, data[index])
            : ImageTile(data[index]),
        controller: scrollController,
        itemCount: data.length,
      ),
    );
  }
}
