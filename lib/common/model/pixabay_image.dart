import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_image.freezed.dart';

part 'pixabay_image.g.dart';

@freezed
class PixabayImage with _$PixabayImage {
  const factory PixabayImage({
    String? title,
    required int id,
    String? previewURL,
    String? webformatURL,
    String? largeImageURL,
  }) = _PixabayImage;

  factory PixabayImage.fromJson(Map<String, Object?> json) =>
      _$PixabayImageFromJson(json);
}
