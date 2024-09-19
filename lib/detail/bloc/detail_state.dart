part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState.initial({
    PixabayImage? image,
    @Default(false) bool isFavorite,
    LoadingWithTag? loading,
  }) = _Initial;
}
