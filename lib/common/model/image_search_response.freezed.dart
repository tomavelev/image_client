// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSearchResponse _$ImageSearchResponseFromJson(Map<String, dynamic> json) {
  return _ImageSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageSearchResponse {
  List<PixabayImage> get hits => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this ImageSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSearchResponseCopyWith<ImageSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSearchResponseCopyWith<$Res> {
  factory $ImageSearchResponseCopyWith(
          ImageSearchResponse value, $Res Function(ImageSearchResponse) then) =
      _$ImageSearchResponseCopyWithImpl<$Res, ImageSearchResponse>;
  @useResult
  $Res call({List<PixabayImage> hits, int total});
}

/// @nodoc
class _$ImageSearchResponseCopyWithImpl<$Res, $Val extends ImageSearchResponse>
    implements $ImageSearchResponseCopyWith<$Res> {
  _$ImageSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      hits: null == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSearchResponseImplCopyWith<$Res>
    implements $ImageSearchResponseCopyWith<$Res> {
  factory _$$ImageSearchResponseImplCopyWith(_$ImageSearchResponseImpl value,
          $Res Function(_$ImageSearchResponseImpl) then) =
      __$$ImageSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PixabayImage> hits, int total});
}

/// @nodoc
class __$$ImageSearchResponseImplCopyWithImpl<$Res>
    extends _$ImageSearchResponseCopyWithImpl<$Res, _$ImageSearchResponseImpl>
    implements _$$ImageSearchResponseImplCopyWith<$Res> {
  __$$ImageSearchResponseImplCopyWithImpl(_$ImageSearchResponseImpl _value,
      $Res Function(_$ImageSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = null,
    Object? total = null,
  }) {
    return _then(_$ImageSearchResponseImpl(
      hits: null == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<PixabayImage>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSearchResponseImpl implements _ImageSearchResponse {
  const _$ImageSearchResponseImpl(
      {required final List<PixabayImage> hits, required this.total})
      : _hits = hits;

  factory _$ImageSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSearchResponseImplFromJson(json);

  final List<PixabayImage> _hits;
  @override
  List<PixabayImage> get hits {
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hits);
  }

  @override
  final int total;

  @override
  String toString() {
    return 'ImageSearchResponse(hits: $hits, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchResponseImpl &&
            const DeepCollectionEquality().equals(other._hits, _hits) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_hits), total);

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchResponseImplCopyWith<_$ImageSearchResponseImpl> get copyWith =>
      __$$ImageSearchResponseImplCopyWithImpl<_$ImageSearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _ImageSearchResponse implements ImageSearchResponse {
  const factory _ImageSearchResponse(
      {required final List<PixabayImage> hits,
      required final int total}) = _$ImageSearchResponseImpl;

  factory _ImageSearchResponse.fromJson(Map<String, dynamic> json) =
      _$ImageSearchResponseImpl.fromJson;

  @override
  List<PixabayImage> get hits;
  @override
  int get total;

  /// Create a copy of ImageSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchResponseImplCopyWith<_$ImageSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
