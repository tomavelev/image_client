import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/service/image_service.dart';

import '../../common/model/pixabay_image.dart';
import '../../common/service/favorite_service.dart';

part 'fav_event.dart';

part 'fav_state.dart';

part 'fav_bloc.freezed.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  final FavoriteService _favoriteService;
  final ImageService _imageService;

  FavBloc(
    this._favoriteService,
    this._imageService,
  ) : super(const FavState.initial([])) {
    on<FavEvent>((event, emit) async {
      var set = await _favoriteService.fetch();
      await _imageService.fetch(set);
      //get images from the set
    });
  }
}
