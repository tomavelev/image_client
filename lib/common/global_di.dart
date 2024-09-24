import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:image_client/common/env.dart';
import 'package:image_client/common/api/image_api.dart';
import 'package:image_client/common/data_source/image_remote_data_source.dart';
import 'package:image_client/common/error_mapper.dart';
import 'package:image_client/common/repository/image_repository.dart';
import 'package:image_client/common/service/favorite_service.dart';
import 'package:image_client/common/service/image_service.dart';

import 'api/auth_interceptor.dart';

class GlobalDI extends StatefulWidget {
  final Widget child;
  final Env env;

  static bool isTest = false;

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
    GetIt.I.registerSingleton(widget.env);
    _network();
    _datasource();
    _repositories();
    _services();
  }

  void _network() {
    GetIt.I.registerSingleton<Dio>(Dio()
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

    GetIt.I.registerSingleton(ImageApi(
      GetIt.I.get(),
      baseUrl: GetIt.I.get<Env>().host,
    ));
  }

  void _datasource() {
    if (!GlobalDI.isTest) {
      GetIt.I.registerSingleton(ImageDataSource(
        api: GetIt.I.get(),
      ));
    }
  }

  void _repositories() {
    GetIt.I.registerSingleton(ErrorMapper());

    GetIt.I.registerSingleton(ImageRepository(
      GetIt.I.get(),
      GetIt.I.get(),
    ));
  }

  void _services() {
    GetIt.I.registerSingleton(FavoriteService());

    GetIt.I.registerSingleton(ImageService(
      imageRepository: GetIt.I.get(),
    ));
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
