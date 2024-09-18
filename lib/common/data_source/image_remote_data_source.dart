import 'package:image_client/common/api/image_api.dart';

import '../model/image_search_response.dart';

class ImageDataSource {
  final ImageApi api;

  ImageDataSource({
    required this.api,
  });

  Future<ImageSearchResponse> search({
    required String query,
    int page = 1,
  }) {
    return api.search(
      query: query,
      page: page,
    );
  }

  Future<ImageSearchResponse> fetch({
    required String ids,
  }) {
    return api.fetch(
      id: ids,
    );
  }
}
