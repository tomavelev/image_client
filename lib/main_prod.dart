import 'package:flutter/widgets.dart';

import 'common/env.dart';
import 'common/my_app.dart';
import 'flavors.dart';

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  runApp(const MyApp(env: Env.prod));
}
