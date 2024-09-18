import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_client/common/env.dart';
import 'package:image_client/common/api/image_api.dart';
import 'package:image_client/common/data_source/image_remote_data_source.dart';
import 'package:image_client/common/error_mapper.dart';
import 'package:image_client/common/repository/image_repository.dart';
import 'package:image_client/common/service/favorite_service.dart';
import 'package:image_client/common/service/image_service.dart';
import 'package:image_client/main.dart';

import 'api/auth_interceptor.dart';

class GlobalDI extends StatefulWidget {
  final Widget child;
  final Env env;

  const GlobalDI({
    super.key,
    required this.child,
    required this.env,
  });

  @override
  State<GlobalDI> createState() => _GlobalDIState();
}

class _GlobalDIState extends State<GlobalDI> {
  @override
  void initState() {
    super.initState();
    _initGlobal();
  }

  void _initGlobal() {
    getIt.registerSingleton(widget.env);
    _network();
    _datasource();
    _repositories();
    _services();
  }

  void _network() {
    getIt.registerSingleton(Dio()
      ..interceptors.addAll([
        AuthInterceptor(key: widget.env.apiKey),
        LogInterceptor(
          logPrint: (object) => debugPrint,
          responseBody: true,
          responseHeader: true,
          error: true,
          requestBody: true,
          requestHeader: true,
          request: true,
        ),
      ]));

    getIt.registerSingleton(ImageApi(
      getIt.get(),
      baseUrl: getIt<Env>().host,
    ));
  }

  void _datasource() {
    getIt.registerSingleton(ImageDataSource(
      api: getIt.get(),
    ));
  }

  void _repositories() {
    getIt.registerSingleton(ErrorMapper());

    getIt.registerSingleton(ImageRepository(
      getIt.get(),
      getIt.get(),
    ));
  }

  void _services() {
    getIt.registerSingleton(FavoriteService());

    getIt.registerSingleton(ImageService(
      galleryRepository: getIt.get(),
    ));
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
