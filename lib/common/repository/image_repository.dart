import 'package:image_client/common/data_source/image_remote_data_source.dart';

import '../error_mapper.dart';
import '../model/image_search_response.dart';

class ImageRepository {
  ImageRepository(
    this._errorMapper,
    this._dataSource,
  );

  final ErrorMapper _errorMapper;
  final ImageDataSource _dataSource;

  Future<ImageSearchResponse> search({
    required String query,
    int page = 1,
  }) =>
      _errorMapper.wrapExecute(
        () => _dataSource.search(
          query: query,
          page: page,
        ),
      );

  Future<ImageSearchResponse> fetch({required Set<int> ids}) =>
      _errorMapper.wrapExecute(
        () => _dataSource.fetch(
          ids: ids.join(","),
        ),
      );
}
