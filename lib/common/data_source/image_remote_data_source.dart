import 'package:image_client/common/api/image_api.dart';

import '../model/image_search_response.dart';

class ImageDataSource {
  final ImageApi _api;

  ImageDataSource({
    required ImageApi api,
  }) : _api = api;

  Future<ImageSearchResponse> search({
    required String query,
    int page = 1,
  }) {
    return _api.search(
      query: query,
      page: page,
    );
  }

  Future<ImageSearchResponse> fetch({
    required String ids,
  }) {
    return _api.fetch(
      id: ids,
    );
  }
}
