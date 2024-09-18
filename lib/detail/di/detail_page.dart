import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_client/detail/bloc/detail_bloc.dart';
import 'package:image_client/detail/view/detail_screen.dart';
import 'package:image_client/main.dart';

import '../../common/model/pixabay_image.dart';

class DetailPage extends StatelessWidget {
  final PixabayImage? image;

  const DetailPage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DetailBloc(getIt())..add(DetailEvent.started(image)),
      child: const DetailScreen(),
    );
  }
}
