import 'package:dio/dio.dart';
import 'package:image_client/common/model/image_search_response.dart';
import 'package:retrofit/retrofit.dart';

part 'image_api.g.dart';

@RestApi()
abstract class ImageApi {
  factory ImageApi(
    Dio dio, {
    required String? baseUrl,
  }) = _ImageApi;

  @GET('/')
  Future<ImageSearchResponse> search({
    @Query('q') required String query,
    @Query('page') int page = 1,
  });

  @GET('/')
  Future<ImageSearchResponse> fetch({
    @Query('id') required String id,
  });
}
