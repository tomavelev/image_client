import 'package:flutter/material.dart';

import 'common/env.dart';
import 'common/my_app.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void main() {
  runApp(const MyApp(
    env: Env.dev,
  ));
}
