part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.homeState({
    @Default(false) bool loading,
    @Default(null) ErrorModel? error,
    @Default(0) int total,
    @Default([]) List<PixabayImage>? data,
    @Default("") String lastQ,
  }) = _HomeState;
}
