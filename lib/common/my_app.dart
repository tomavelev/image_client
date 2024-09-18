import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/common/views/error_page.dart';
import 'package:image_client/detail/di/detail_page.dart';
import 'package:image_client/home/di/home_page.dart';

import '../fav/di/fav_page.dart';
import '../home/view/home_screen.dart';
import 'env.dart';
import 'global_di.dart';

class MyApp extends StatelessWidget {
  final Env env;

  const MyApp({
    super.key,
    required this.env,
  });

  @override
  Widget build(BuildContext context) => GlobalDI(
        env: env,
        child: RouterMaterialApp(),
      );
}

class RouterMaterialApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  final _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: '/',
        name: "HomePage",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/details',
        name: "Details",
        builder: (context, state) => DetailPage(state.extra as PixabayImage?),
      ),
      GoRoute(
        path: '/fag',
        builder: (context, state) => const FavPage(),
      ),
    ],
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
  );

  RouterMaterialApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      );
}
