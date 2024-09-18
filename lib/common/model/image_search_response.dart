import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_client/common/model/pixabay_image.dart';

part 'image_search_response.freezed.dart';

part 'image_search_response.g.dart';

@freezed
class ImageSearchResponse with _$ImageSearchResponse {
  const factory ImageSearchResponse({
    required List<PixabayImage> hits,
    required int total,
  }) = _ImageSearchResponse;

  factory ImageSearchResponse.fromJson(Map<String, Object?> json) =>
      _$ImageSearchResponseFromJson(json);
}
