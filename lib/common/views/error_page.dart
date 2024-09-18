import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String error;

  const ErrorPage({super.key, required this.error});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Text("Error Occurred $error"),
        ),
      );
}
