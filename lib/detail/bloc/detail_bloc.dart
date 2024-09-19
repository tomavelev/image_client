import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/service/favorite_service.dart';

import '../../common/model/loading_with_tag.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  static String global = "global";
  static String fav = "fav";

  final FavoriteService favoriteService;

  DetailBloc(this.favoriteService) : super(const DetailState.initial()) {
    on<DetailEvent>((event, emit) async {
      if (event is _Started) {
        var isFavorite = await favoriteService.isFavorite(event.image?.id ?? 0);
        emit(DetailState.initial(
          image: event.image,
          isFavorite: isFavorite,
        ));
      } else if (event is _AddToFavorite) {
        emit(state.copyWith(
            loading: LoadingWithTag(
          loading: true,
          tag: fav,
        )));
        await favoriteService.add(state.image?.id ?? 0);
        emit(state.copyWith(
          isFavorite: true,
          loading: null,
        ));
      } else {
        emit(state.copyWith(
            loading: LoadingWithTag(
              loading: true,
              tag: fav,
            )));
        await favoriteService.remove(state.image?.id ?? 0);
        emit(state.copyWith(
          isFavorite: false,
          loading: null,
        ));
      }
    });
  }
}
