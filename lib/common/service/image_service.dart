import 'package:image_client/common/repository/image_repository.dart';

import '../model/image_search_response.dart';

class ImageService {
  final ImageRepository _imageRepository;

  ImageService({
    required ImageRepository galleryRepository,
  }) : _imageRepository = galleryRepository;

  Future<ImageSearchResponse> search({
    int page = 1,
    required String query,
  }) async {
    return _imageRepository.search(
      query: query,
      page: page,
    );
  }

  Future<ImageSearchResponse> fetch(Set<int> set) {
    return _imageRepository.fetch(
      ids: set,
    );
  }
}
