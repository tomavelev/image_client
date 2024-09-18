part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.started(PixabayImage? image) = _Started;
  const factory DetailEvent.removeFromFavorite() = _RemoveFromFavorite;
  const factory DetailEvent.addToFavorite() = _AddToFavorite;

}
