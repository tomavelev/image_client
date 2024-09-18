import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/service/favorite_service.dart';

part 'detail_event.dart';

part 'detail_state.dart';

part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
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
        await favoriteService.add(state.image?.id ?? 0);
      } else {
        await favoriteService.remove(state.image?.id ?? 0);
      }
    });
  }
}
