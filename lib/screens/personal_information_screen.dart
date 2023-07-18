import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/screens/default_screen.dart';

class PersonalInformationScreen extends StatelessWidget {
  final String label;
  const PersonalInformationScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      destinations: [
        TextButton(
          onPressed: () async => await GoRouter.of(context).push("/"),
          child: const Text("Das bin ich"),
        ),
        TextButton(
          onPressed: () async => await GoRouter.of(context).push("/my-story"),
          child: const Text("Meine Geschichte"),
        ),
      ],
      child: Container(),
    );
  }
}
