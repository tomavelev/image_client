import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/common/views/image_grid_view.dart';
import 'package:image_client/common/views/image_tile.dart';

import '../bloc/fav_bloc.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          ),
          title: const Text("Favorites"),
        ),
        body: BlocBuilder<FavBloc, FavState>(
          builder: (context, state) =>
              (state.data != null && state.data!.isEmpty)
                  ? const Center(
                      child: Text("No Favorite Images"),
                    )
                  : ImageGridView(
                      itemBuilder: (context, item) {
                        return Stack(
                          children: [
                            ImageTile(item),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () => context
                                    .read<FavBloc>()
                                    .add(FavEvent.removeFavorite(item)),
                                child: const Icon(Icons.favorite_border),
                              ),
                            )
                          ],
                        );
                      },
                      data: state.data ?? [],
                    ),
        ),
      );
}
