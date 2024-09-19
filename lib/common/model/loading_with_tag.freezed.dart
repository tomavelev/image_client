// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_with_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoadingWithTag _$LoadingWithTagFromJson(Map<String, dynamic> json) {
  return _LoadingWithTag.fromJson(json);
}

/// @nodoc
mixin _$LoadingWithTag {
  String? get tag => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Serializes this LoadingWithTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoadingWithTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadingWithTagCopyWith<LoadingWithTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingWithTagCopyWith<$Res> {
  factory $LoadingWithTagCopyWith(
          LoadingWithTag value, $Res Function(LoadingWithTag) then) =
      _$LoadingWithTagCopyWithImpl<$Res, LoadingWithTag>;
  @useResult
  $Res call({String? tag, bool loading});
}

/// @nodoc
class _$LoadingWithTagCopyWithImpl<$Res, $Val extends LoadingWithTag>
    implements $LoadingWithTagCopyWith<$Res> {
  _$LoadingWithTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingWithTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingWithTagImplCopyWith<$Res>
    implements $LoadingWithTagCopyWith<$Res> {
  factory _$$LoadingWithTagImplCopyWith(_$LoadingWithTagImpl value,
          $Res Function(_$LoadingWithTagImpl) then) =
      __$$LoadingWithTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tag, bool loading});
}

/// @nodoc
class __$$LoadingWithTagImplCopyWithImpl<$Res>
    extends _$LoadingWithTagCopyWithImpl<$Res, _$LoadingWithTagImpl>
    implements _$$LoadingWithTagImplCopyWith<$Res> {
  __$$LoadingWithTagImplCopyWithImpl(
      _$LoadingWithTagImpl _value, $Res Function(_$LoadingWithTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingWithTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? loading = null,
  }) {
    return _then(_$LoadingWithTagImpl(
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoadingWithTagImpl implements _LoadingWithTag {
  const _$LoadingWithTagImpl({this.tag, this.loading = false});

  factory _$LoadingWithTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingWithTagImplFromJson(json);

  @override
  final String? tag;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'LoadingWithTag(tag: $tag, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingWithTagImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tag, loading);

  /// Create a copy of LoadingWithTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingWithTagImplCopyWith<_$LoadingWithTagImpl> get copyWith =>
      __$$LoadingWithTagImplCopyWithImpl<_$LoadingWithTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingWithTagImplToJson(
      this,
    );
  }
}

abstract class _LoadingWithTag implements LoadingWithTag {
  const factory _LoadingWithTag({final String? tag, final bool loading}) =
      _$LoadingWithTagImpl;

  factory _LoadingWithTag.fromJson(Map<String, dynamic> json) =
      _$LoadingWithTagImpl.fromJson;

  @override
  String? get tag;
  @override
  bool get loading;

  /// Create a copy of LoadingWithTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingWithTagImplCopyWith<_$LoadingWithTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
