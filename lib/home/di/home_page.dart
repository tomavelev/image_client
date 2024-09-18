import 'package:flutter/material.dart';
import 'package:image_client/home/bloc/home_bloc.dart';
import 'package:image_client/home/view/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => HomeBloc(
          getIt.get(),
        )..add(const HomeEvent.fetch()),
        child: const HomeScreen(),
      );
}
