import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_client/common/env.dart';
import 'package:image_client/common/my_app.dart';

FutureOr<void> main() async {
  runApp(const MyApp(env: Env.dev));
}