import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main.dart';
import '../bloc/fav_bloc.dart';
import '../view/fav_screen.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavBloc(getIt(), getIt())..add(const FavEvent.started()),
      child: const FavScreen(),
    );
  }
}
