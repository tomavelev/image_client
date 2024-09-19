part of 'fav_bloc.dart';

@freezed
class FavState with _$FavState {
  const factory FavState.initial({
    @Default([]) List<PixabayImage>? data,
    @Default(false) bool loading,
    ErrorModel? error,
  }) = _Initial;
}
