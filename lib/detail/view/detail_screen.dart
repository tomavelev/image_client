import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
        actions: [
          BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              return InkWell(
                onTap: () {
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
                child: Icon(
                    state.isFavorite ? Icons.favorite_border : Icons.favorite),
              );
            },
          )
        ],
      ),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          if (state.image == null) {
            return const CircularProgressIndicator();
          }
          return Column(
            children: [
              if (state.image!.title != null) Text(state.image!.title!),
              CachedNetworkImage(imageUrl: state.image?.largeImageURL ?? ''),
            ],
          );
        },
      ));
}
