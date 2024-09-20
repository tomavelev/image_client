// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String suggestion) removeSuggestion,
    required TResult Function(String? q) fetch,
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String suggestion)? removeSuggestion,
    TResult? Function(String? q)? fetch,
    TResult? Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String suggestion)? removeSuggestion,
    TResult Function(String? q)? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveSuggestion value) removeSuggestion,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveSuggestion value)? removeSuggestion,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveSuggestion value)? removeSuggestion,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String suggestion) removeSuggestion,
    required TResult Function(String? q) fetch,
    required TResult Function() fetchMore,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String suggestion)? removeSuggestion,
    TResult? Function(String? q)? fetch,
    TResult? Function()? fetchMore,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String suggestion)? removeSuggestion,
    TResult Function(String? q)? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveSuggestion value) removeSuggestion,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveSuggestion value)? removeSuggestion,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveSuggestion value)? removeSuggestion,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RemoveSuggestionImplCopyWith<$Res> {
  factory _$$RemoveSuggestionImplCopyWith(_$RemoveSuggestionImpl value,
          $Res Function(_$RemoveSuggestionImpl) then) =
      __$$RemoveSuggestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String suggestion});
}

/// @nodoc
class __$$RemoveSuggestionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RemoveSuggestionImpl>
    implements _$$RemoveSuggestionImplCopyWith<$Res> {
  __$$RemoveSuggestionImplCopyWithImpl(_$RemoveSuggestionImpl _value,
      $Res Function(_$RemoveSuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestion = null,
  }) {
    return _then(_$RemoveSuggestionImpl(
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveSuggestionImpl implements _RemoveSuggestion {
  const _$RemoveSuggestionImpl({this.suggestion = ""});

  @override
  @JsonKey()
  final String suggestion;

  @override
  String toString() {
    return 'HomeEvent.removeSuggestion(suggestion: $suggestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSuggestionImpl &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, suggestion);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSuggestionImplCopyWith<_$RemoveSuggestionImpl> get copyWith =>
      __$$RemoveSuggestionImplCopyWithImpl<_$RemoveSuggestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String suggestion) removeSuggestion,
    required TResult Function(String? q) fetch,
    required TResult Function() fetchMore,
  }) {
    return removeSuggestion(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String suggestion)? removeSuggestion,
    TResult? Function(String? q)? fetch,
    TResult? Function()? fetchMore,
  }) {
    return removeSuggestion?.call(suggestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String suggestion)? removeSuggestion,
    TResult Function(String? q)? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (removeSuggestion != null) {
      return removeSuggestion(suggestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveSuggestion value) removeSuggestion,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return removeSuggestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveSuggestion value)? removeSuggestion,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return removeSuggestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveSuggestion value)? removeSuggestion,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (removeSuggestion != null) {
      return removeSuggestion(this);
    }
    return orElse();
  }
}

abstract class _RemoveSuggestion implements HomeEvent {
  const factory _RemoveSuggestion({final String suggestion}) =
      _$RemoveSuggestionImpl;

  String get suggestion;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveSuggestionImplCopyWith<_$RemoveSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? q});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? q = freezed,
  }) {
    return _then(_$FetchImpl(
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl({this.q = ""});

  @override
  @JsonKey()
  final String? q;

  @override
  String toString() {
    return 'HomeEvent.fetch(q: $q)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.q, q) || other.q == q));
  }

  @override
  int get hashCode => Object.hash(runtimeType, q);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String suggestion) removeSuggestion,
    required TResult Function(String? q) fetch,
    required TResult Function() fetchMore,
  }) {
    return fetch(q);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String suggestion)? removeSuggestion,
    TResult? Function(String? q)? fetch,
    TResult? Function()? fetchMore,
  }) {
    return fetch?.call(q);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String suggestion)? removeSuggestion,
    TResult Function(String? q)? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(q);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveSuggestion value) removeSuggestion,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveSuggestion value)? removeSuggestion,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveSuggestion value)? removeSuggestion,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements HomeEvent {
  const factory _Fetch({final String? q}) = _$FetchImpl;

  String? get q;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchMoreImpl>
    implements _$$FetchMoreImplCopyWith<$Res> {
  __$$FetchMoreImplCopyWithImpl(
      _$FetchMoreImpl _value, $Res Function(_$FetchMoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchMoreImpl implements _FetchMore {
  const _$FetchMoreImpl();

  @override
  String toString() {
    return 'HomeEvent.fetchMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String suggestion) removeSuggestion,
    required TResult Function(String? q) fetch,
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String suggestion)? removeSuggestion,
    TResult? Function(String? q)? fetch,
    TResult? Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String suggestion)? removeSuggestion,
    TResult Function(String? q)? fetch,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveSuggestion value) removeSuggestion,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveSuggestion value)? removeSuggestion,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveSuggestion value)? removeSuggestion,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements HomeEvent {
  const factory _FetchMore() = _$FetchMoreImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get loading => throw _privateConstructorUsedError;
  ErrorModel? get error => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<PixabayImage>? get data => throw _privateConstructorUsedError;
  Set<String>? get suggestions => throw _privateConstructorUsedError;
  String get lastQ => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)
        homeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)?
        homeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)?
        homeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) homeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? homeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? homeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool loading,
      ErrorModel? error,
      int total,
      List<PixabayImage>? data,
      Set<String>? suggestions,
      String lastQ});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? total = null,
    Object? data = freezed,
    Object? suggestions = freezed,
    Object? lastQ = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>?,
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastQ: null == lastQ
          ? _value.lastQ
          : lastQ // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      ErrorModel? error,
      int total,
      List<PixabayImage>? data,
      Set<String>? suggestions,
      String lastQ});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = freezed,
    Object? total = null,
    Object? data = freezed,
    Object? suggestions = freezed,
    Object? lastQ = null,
  }) {
    return _then(_$HomeStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorModel?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>?,
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
      lastQ: null == lastQ
          ? _value.lastQ
          : lastQ // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.loading = false,
      this.error = null,
      this.total = 0,
      final List<PixabayImage>? data = const [],
      final Set<String>? suggestions = const <String>{},
      this.lastQ = ""})
      : _data = data,
        _suggestions = suggestions;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final ErrorModel? error;
  @override
  @JsonKey()
  final int total;
  final List<PixabayImage>? _data;
  @override
  @JsonKey()
  List<PixabayImage>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Set<String>? _suggestions;
  @override
  @JsonKey()
  Set<String>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableSetView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  @JsonKey()
  final String lastQ;

  @override
  String toString() {
    return 'HomeState.homeState(loading: $loading, error: $error, total: $total, data: $data, suggestions: $suggestions, lastQ: $lastQ)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.lastQ, lastQ) || other.lastQ == lastQ));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      total,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_suggestions),
      lastQ);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)
        homeState,
  }) {
    return homeState(loading, error, total, data, suggestions, lastQ);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)?
        homeState,
  }) {
    return homeState?.call(loading, error, total, data, suggestions, lastQ);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool loading, ErrorModel? error, int total,
            List<PixabayImage>? data, Set<String>? suggestions, String lastQ)?
        homeState,
    required TResult orElse(),
  }) {
    if (homeState != null) {
      return homeState(loading, error, total, data, suggestions, lastQ);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) homeState,
  }) {
    return homeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? homeState,
  }) {
    return homeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? homeState,
    required TResult orElse(),
  }) {
    if (homeState != null) {
      return homeState(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool loading,
      final ErrorModel? error,
      final int total,
      final List<PixabayImage>? data,
      final Set<String>? suggestions,
      final String lastQ}) = _$HomeStateImpl;

  @override
  bool get loading;
  @override
  ErrorModel? get error;
  @override
  int get total;
  @override
  List<PixabayImage>? get data;
  @override
  Set<String>? get suggestions;
  @override
  String get lastQ;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
