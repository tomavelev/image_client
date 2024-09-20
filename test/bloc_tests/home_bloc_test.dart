import 'package:bloc_test/bloc_test.dart';
import 'package:get_it/get_it.dart';
import 'package:image_client/common/data_source/image_remote_data_source.dart';
import 'package:image_client/common/error_mapper.dart';
import 'package:image_client/common/global_di.dart';
import 'package:image_client/common/model/image_search_response.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/repository/image_repository.dart';
import 'package:image_client/common/service/image_service.dart';
import 'package:image_client/home/bloc/home_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../widget_tests/home_go_details_test.mocks.dart';

void main() {
  GlobalDI.isTest = true;
  group(HomeBloc, () {
    final mockDs = MockImageDataSource();
    var errorMapper = ErrorMapper();
    GetIt.instance.registerSingleton<ImageDataSource>(mockDs);
    late HomeBloc homeBloc;

    setUp(() {
      homeBloc = HomeBloc(
        ImageService(
          imageRepository: ImageRepository(
            errorMapper,
            mockDs,
          ),
        ),
      );
    });

    blocTest(
      'HomeEvent.started is added',
      build: () => homeBloc,
      act: (bloc) => bloc.add(const HomeEvent.started()),
      expect: () => [],
    );

    final images = <PixabayImage>[];
    for (int i = 0; i < 20; i++) {
      images.add(PixabayImage(
        id: i,
        title: '$i',
        previewURL: "$i",
      ));
    }
    var imageSearchResponse = ImageSearchResponse(
      hits: images,
      total: 40,
    );
    when(mockDs.search(query: ''))
        .thenAnswer((realInvocation) => Future.value(imageSearchResponse));

    blocTest(
      'HomeEvent.fetch is added',
      build: () => homeBloc,
      act: (bloc) => bloc.add(const HomeEvent.fetch()),
      expect: () => [
        const HomeState.homeState(loading: true),
        HomeState.homeState(
          loading: false,
          data: imageSearchResponse.hits,
          total: 40,
        ),
      ],
    );

    blocTest(
      'HomeEvent.fetchMore is added',
      build: () => homeBloc,
      act: (bloc) {
        bloc.add(const HomeEvent.fetch());
        bloc.add(const HomeEvent.fetchMore());
      },
      expect: () => [
        const HomeState.homeState(loading: true),
        HomeState.homeState(
          loading: false,
          data: imageSearchResponse.hits,
          total: 40,
        ),
        HomeState.homeState(
          loading: true,
          data: imageSearchResponse.hits,
          total: 40,
        ),
        HomeState.homeState(
          loading: false,
          data: [
            ...imageSearchResponse.hits,
            ...imageSearchResponse.hits,
          ],
          total: 40,
        ),
      ],
    );
  });
}
