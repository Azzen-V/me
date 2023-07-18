import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/screens/default_screen.dart';
import 'package:me/screens/personal_story/personal_story_view.dart';

class PersonalStoryScreen extends StatelessWidget {
  final String label;
  const PersonalStoryScreen({Key? key, required this.label}) : super(key: key);

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
          onPressed: () async => await GoRouter.of(context).push("/info"),
          child: const Text("Persönliche Informationen"),
        ),
      ],
      child: const PersonalStoryView(),
    );
  }
}
