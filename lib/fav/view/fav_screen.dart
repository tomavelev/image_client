import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/home/view/image_tile.dart';

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
        ),
        body: BlocBuilder<FavBloc, FavState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.data?.length,
              itemBuilder: (context, index) => ImageTile(state.data![index]),
            );
          },
        ),
      );
}
