import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/error_mapper.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/service/image_service.dart';

import '../../common/model/error/error_model.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ImageService _imageService;

  HomeBloc(this._imageService) : super(const HomeState.homeState()) {
    on<HomeEvent>((event, emit) {});
    on<_Fetch>(_fetch);
    on<_FetchMore>(_fetchMore);
  }

  Future<void> _fetchMore(_FetchMore event, Emitter<HomeState> emit) async {
    await _doFetch(state.lastQ, emit);
  }

  Future<void> _fetch(_Fetch event, Emitter<HomeState> emit) async {
    await _doFetch(event.q, emit);
  }

  Future<void> _doFetch(String? eventQ, Emitter<HomeState> emit) async {
    if (state.loading) {
      return;
    }
    final q = eventQ ?? "";
    var length = state.data?.length;
    length ??= 0;

    var page = length / 20;
    if (page == 0) {
      page = 1;
    }
    if (q != state.lastQ) {
      page = 1;
      emit(state.copyWith(
        loading: true,
        error: null,
        data: null,
        lastQ: q,
      ));
    } else {
      emit(state.copyWith(
        loading: true,
        error: null,
        data: state.data,
        lastQ: q,
      ));
    }

    try {
      var imageResponse =
          await _imageService.search(query: q, page: page.toInt());

      emit(state.copyWith(
        lastQ: q,
        loading: false,
        data: List.from([
          ...?state.data,
          ...imageResponse.hits,
        ]),
        total: imageResponse.total,
      ));
    } catch (e) {
      emit(state.copyWith(
        loading: false,
        error: e.toErrorModel(),
        data: state.data,
        lastQ: q,
      ));
    }
  }
}
