part of 'fav_bloc.dart';

@freezed
class FavState with _$FavState {
  const factory FavState.initial(List<PixabayImage>? data) = _Initial;
}
