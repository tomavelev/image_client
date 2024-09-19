// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixabayImage? image) started,
    required TResult Function() removeFromFavorite,
    required TResult Function() addToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixabayImage? image)? started,
    TResult? Function()? removeFromFavorite,
    TResult? Function()? addToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixabayImage? image)? started,
    TResult Function()? removeFromFavorite,
    TResult Function()? addToFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
    required TResult Function(_AddToFavorite value) addToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult? Function(_AddToFavorite value)? addToFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult Function(_AddToFavorite value)? addToFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailEventCopyWith<$Res> {
  factory $DetailEventCopyWith(
          DetailEvent value, $Res Function(DetailEvent) then) =
      _$DetailEventCopyWithImpl<$Res, DetailEvent>;
}

/// @nodoc
class _$DetailEventCopyWithImpl<$Res, $Val extends DetailEvent>
    implements $DetailEventCopyWith<$Res> {
  _$DetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PixabayImage? image});

  $PixabayImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$StartedImpl(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PixabayImage?,
    ));
  }

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PixabayImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $PixabayImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
    });
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.image);

  @override
  final PixabayImage? image;

  @override
  String toString() {
    return 'DetailEvent.started(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixabayImage? image) started,
    required TResult Function() removeFromFavorite,
    required TResult Function() addToFavorite,
  }) {
    return started(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixabayImage? image)? started,
    TResult? Function()? removeFromFavorite,
    TResult? Function()? addToFavorite,
  }) {
    return started?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixabayImage? image)? started,
    TResult Function()? removeFromFavorite,
    TResult Function()? addToFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
    required TResult Function(_AddToFavorite value) addToFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult? Function(_AddToFavorite value)? addToFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult Function(_AddToFavorite value)? addToFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailEvent {
  const factory _Started(final PixabayImage? image) = _$StartedImpl;

  PixabayImage? get image;

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFromFavoriteImplCopyWith(_$RemoveFromFavoriteImpl value,
          $Res Function(_$RemoveFromFavoriteImpl) then) =
      __$$RemoveFromFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveFromFavoriteImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$RemoveFromFavoriteImpl>
    implements _$$RemoveFromFavoriteImplCopyWith<$Res> {
  __$$RemoveFromFavoriteImplCopyWithImpl(_$RemoveFromFavoriteImpl _value,
      $Res Function(_$RemoveFromFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveFromFavoriteImpl implements _RemoveFromFavorite {
  const _$RemoveFromFavoriteImpl();

  @override
  String toString() {
    return 'DetailEvent.removeFromFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveFromFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixabayImage? image) started,
    required TResult Function() removeFromFavorite,
    required TResult Function() addToFavorite,
  }) {
    return removeFromFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixabayImage? image)? started,
    TResult? Function()? removeFromFavorite,
    TResult? Function()? addToFavorite,
  }) {
    return removeFromFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixabayImage? image)? started,
    TResult Function()? removeFromFavorite,
    TResult Function()? addToFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
    required TResult Function(_AddToFavorite value) addToFavorite,
  }) {
    return removeFromFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult? Function(_AddToFavorite value)? addToFavorite,
  }) {
    return removeFromFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult Function(_AddToFavorite value)? addToFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorite implements DetailEvent {
  const factory _RemoveFromFavorite() = _$RemoveFromFavoriteImpl;
}

/// @nodoc
abstract class _$$AddToFavoriteImplCopyWith<$Res> {
  factory _$$AddToFavoriteImplCopyWith(
          _$AddToFavoriteImpl value, $Res Function(_$AddToFavoriteImpl) then) =
      __$$AddToFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToFavoriteImplCopyWithImpl<$Res>
    extends _$DetailEventCopyWithImpl<$Res, _$AddToFavoriteImpl>
    implements _$$AddToFavoriteImplCopyWith<$Res> {
  __$$AddToFavoriteImplCopyWithImpl(
      _$AddToFavoriteImpl _value, $Res Function(_$AddToFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToFavoriteImpl implements _AddToFavorite {
  const _$AddToFavoriteImpl();

  @override
  String toString() {
    return 'DetailEvent.addToFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PixabayImage? image) started,
    required TResult Function() removeFromFavorite,
    required TResult Function() addToFavorite,
  }) {
    return addToFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PixabayImage? image)? started,
    TResult? Function()? removeFromFavorite,
    TResult? Function()? addToFavorite,
  }) {
    return addToFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PixabayImage? image)? started,
    TResult Function()? removeFromFavorite,
    TResult Function()? addToFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
    required TResult Function(_AddToFavorite value) addToFavorite,
  }) {
    return addToFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult? Function(_AddToFavorite value)? addToFavorite,
  }) {
    return addToFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    TResult Function(_AddToFavorite value)? addToFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorite implements DetailEvent {
  const factory _AddToFavorite() = _$AddToFavoriteImpl;
}

/// @nodoc
mixin _$DetailState {
  PixabayImage? get image => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  LoadingWithTag? get loading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call({PixabayImage? image, bool isFavorite, LoadingWithTag? loading});

  $PixabayImageCopyWith<$Res>? get image;
  $LoadingWithTagCopyWith<$Res>? get loading;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = null,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PixabayImage?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as LoadingWithTag?,
    ) as $Val);
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PixabayImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $PixabayImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoadingWithTagCopyWith<$Res>? get loading {
    if (_value.loading == null) {
      return null;
    }

    return $LoadingWithTagCopyWith<$Res>(_value.loading!, (value) {
      return _then(_value.copyWith(loading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PixabayImage? image, bool isFavorite, LoadingWithTag? loading});

  @override
  $PixabayImageCopyWith<$Res>? get image;
  @override
  $LoadingWithTagCopyWith<$Res>? get loading;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? isFavorite = null,
    Object? loading = freezed,
  }) {
    return _then(_$InitialImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as PixabayImage?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: freezed == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as LoadingWithTag?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.image, this.isFavorite = false, this.loading});

  @override
  final PixabayImage? image;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  final LoadingWithTag? loading;

  @override
  String toString() {
    return 'DetailState.initial(image: $image, isFavorite: $isFavorite, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, isFavorite, loading);

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)
        initial,
  }) {
    return initial(image, isFavorite, loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)?
        initial,
  }) {
    return initial?.call(image, isFavorite, loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            PixabayImage? image, bool isFavorite, LoadingWithTag? loading)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(image, isFavorite, loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailState {
  const factory _Initial(
      {final PixabayImage? image,
      final bool isFavorite,
      final LoadingWithTag? loading}) = _$InitialImpl;

  @override
  PixabayImage? get image;
  @override
  bool get isFavorite;
  @override
  LoadingWithTag? get loading;

  /// Create a copy of DetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
