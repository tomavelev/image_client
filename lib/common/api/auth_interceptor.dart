import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String? key;

  AuthInterceptor({required this.key});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (key != null) {
      options.queryParameters.addAll({
        "key": key,
      });
    }
    return super.onRequest(options, handler);
  }
}
