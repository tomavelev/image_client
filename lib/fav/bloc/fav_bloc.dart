import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/error_mapper.dart';
import 'package:image_client/common/model/error/error_model.dart';
import 'package:image_client/common/service/image_service.dart';

import '../../common/model/pixabay_image.dart';
import '../../common/service/favorite_service.dart';

part 'fav_bloc.freezed.dart';

part 'fav_event.dart';

part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  final FavoriteService _favoriteService;
  final ImageService _imageService;

  FavBloc(
    this._favoriteService,
    this._imageService,
  ) : super(const FavState.initial()) {
    on<_RemoveFavorite>((event, emit) async {
      await _favoriteService.remove(event.image.id);
      add(const _Started());
    });
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        loading: true,
        error: null,
      ));
      try {
        var set = await _favoriteService.fetch();
        var searchResponse = await _imageService.fetch(set);
        emit(state.copyWith(
          loading: false,
          data: searchResponse.hits,
        ));
      } catch (e) {
        emit(state.copyWith(
          loading: false,
          error: e.toErrorModel(),
        ));
      }
    });
  }
}
