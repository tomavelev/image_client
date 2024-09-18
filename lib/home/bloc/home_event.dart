part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;

  const factory HomeEvent.fetch({
  @Default("")  String? q,
  }) = _Fetch;

   const factory HomeEvent.fetchMore() = _FetchMore;
}
