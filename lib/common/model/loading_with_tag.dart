import 'package:freezed_annotation/freezed_annotation.dart';
part 'loading_with_tag.freezed.dart';

part 'loading_with_tag.g.dart';

@freezed
class LoadingWithTag with _$LoadingWithTag {
  const factory LoadingWithTag({
    String? tag,
    @Default(false) bool loading,
  }) = _LoadingWithTag;

  factory LoadingWithTag.fromJson(Map<String, Object?> json) =>
      _$LoadingWithTagFromJson(json);
}