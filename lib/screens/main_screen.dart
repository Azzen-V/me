import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/screens/default_screen.dart';

class MainScreen extends StatelessWidget {
  final String label;
  const MainScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      destinations: [
        TextButton(
          onPressed: () async => await GoRouter.of(context).push("/my-story"),
          child: const Text("Meine Geschichte"),
        ),
        TextButton(
          onPressed: () async => await GoRouter.of(context).push("/info"),
          child: const Text("Persönliche Informationen"),
        ),
      ],
      child: Container(),
    );
  }
}
