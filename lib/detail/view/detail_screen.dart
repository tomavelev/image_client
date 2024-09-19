import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/detail/bloc/detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: const Icon(Icons.arrow_back),
          onTap: () => Navigator.of(context).pop(),
        ),
        title: BlocSelector<DetailBloc, DetailState, String?>(
          selector: (state) => state.image?.title,
          builder: (context, state) => Text(state ?? ""),
        ),
        actions: [
          BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: state.loading != null &&
                        state.loading!.tag == DetailBloc.fav
                    ? null
                    : () {
                        if (state.isFavorite) {
                          context
                              .read<DetailBloc>()
                              .add(const DetailEvent.removeFromFavorite());
                        } else {
                          context
                              .read<DetailBloc>()
                              .add(const DetailEvent.addToFavorite());
                        }
                      },
                child: state.loading != null &&
                        state.loading!.tag == DetailBloc.fav
                    ? const CircularProgressIndicator()
                    : Icon(state.isFavorite
                        ? Icons.favorite_border
                        : Icons.favorite),
              ),
            ),
          )
        ],
      ),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          if (state.image == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                if (state.image!.title != null) Text(state.image!.title!),
                Expanded(
                    child: CachedNetworkImage(
                        imageUrl: state.image?.largeImageURL ?? '')),
              ],
            ),
          );
        },
      ));
}
