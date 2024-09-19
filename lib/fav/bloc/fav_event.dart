part of 'fav_bloc.dart';

@freezed
class FavEvent with _$FavEvent {
  const factory FavEvent.started() = _Started;

  factory FavEvent.removeFavorite(PixabayImage image) = _RemoveFavorite;
}
