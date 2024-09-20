import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/common/extensions/translate_extensions.dart';
import 'package:image_client/common/model/error/error_model.dart';
import 'package:image_client/common/views/bottom_loader.dart';
import 'package:image_client/common/views/image_grid_view.dart';
import 'package:image_client/home/bloc/home_bloc.dart';
import 'package:image_client/home/view/search_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          title: BlocSelector<HomeBloc, HomeState, Set<String>>(
            selector: (state) => state.suggestions ?? <String>{},
            builder: (context, state) => SearchField(
              onTap: (value) =>
                  context.read<HomeBloc>().add(HomeEvent.fetch(q: value)),
              suggestions: state.toList(),
              onUnTap: (suggestion) => context
                  .read<HomeBloc>()
                  .add(HomeEvent.removeSuggestion(suggestion: suggestion)),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed("/fav"),
                child: const Icon(Icons.favorite),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state.data != null) {
                    if (state.data!.isEmpty && state.loading == false) {
                      return Center(
                        child: Text(AppLocalizations.of(context)!.noImages),
                      );
                    }
                    return ImageGridView(
                      data: state.data!,
                      scrollController: _scrollController,
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
