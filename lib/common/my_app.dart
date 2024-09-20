import 'package:flutter/material.dart';
import 'package:image_client/common/model/pixabay_image.dart';
import 'package:image_client/detail/di/detail_page.dart';
import 'package:image_client/home/di/home_page.dart';

import '../fav/di/fav_page.dart';
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
        child: const RouterMaterialApp(),
      );
}

class RouterMaterialApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  const RouterMaterialApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
          darkTheme: ThemeData.dark(
            useMaterial3: true,
          ),
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/': (context) => const HomePage(),
            '/fav': (context) => const FavPage(),
            '/details': (context) => DetailPage(
                ModalRoute.of(context)?.settings.arguments as PixabayImage?),
          });
}
