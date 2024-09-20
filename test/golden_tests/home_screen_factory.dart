import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/common/model/error/error_model.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/home/bloc/home_bloc.dart';
import 'package:image_client/home/view/home_screen.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_screen_factory.mocks.dart';

@GenerateMocks([HomeBloc])
Widget homeScreenFactory({
  bool loading = false,
  List<PixabayImage>? images,
  ErrorModel? error,
}) {
  var homeState = HomeState.homeState(
    loading: loading,
    data: images,
    error: error,
  );
  final homeBloc = MockHomeBloc();
  when(homeBloc.stream).thenAnswer((realInvocation) => Stream.value(homeState));
  when(homeBloc.state).thenReturn(homeState);

  return BlocProvider<HomeBloc>(
    create: (_) => homeBloc,
    child: const HomeScreen(),
  );
}
