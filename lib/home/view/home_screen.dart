import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/common/extensions/translate_extensions.dart';
import 'package:image_client/common/model/error/error_model.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/views/bottom_loader.dart';
import 'package:image_client/home/bloc/home_bloc.dart';
import 'package:image_client/home/view/image_tile.dart';
import 'package:image_client/home/view/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<HomeBloc>().add(const HomeEvent.fetchMore());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: SearchField(
            onTap: (value) {
              context.read<HomeBloc>().add(HomeEvent.fetch(q: value));
            },
          ),
          actions: [
            InkWell(
              onTap: () {
                //TODO go to favorite
              },
              child: const Icon(Icons.favorite),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocSelector<HomeBloc, HomeState, List<PixabayImage>?>(
                selector: (state) => state.data,
                builder: (context, state) {
                  if (state != null) {
                    return ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (context, index) => ImageTile(
                        state[index],
                      ),
                      itemCount: state.length,
                    );
                  }
                  return const SizedBox();
                },
              ),
            ),
            BlocSelector<HomeBloc, HomeState, ErrorModel?>(
              selector: (state) => state.error,
              builder: (context, state) {
                if (state != null) {
                  return Text(state.translate(context));
                }
                return const SizedBox();
              },
            ),
            BlocSelector<HomeBloc, HomeState, bool>(
              selector: (state) => state.loading,
              builder: (context, state) {
                if (state) {
                  return const BottomLoader();
                }
                return const SizedBox();
              },
            )
          ],
        ),
      );
}
