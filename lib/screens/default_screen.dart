import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;
  final String label;
  const DefaultScreen({
    Key? key,
    required this.child,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(label),
        actions: [
          TextButton(
            onPressed: () async => await GoRouter.of(context).push("/"),
            child: const Text("Das bin ich"),
          ),
          TextButton(
            onPressed: () async => await GoRouter.of(context).push("/tech-stack"),
            child: const Text("Tech-Stack"),
          ),
          TextButton(
            onPressed: () async => await GoRouter.of(context).push("/my-story"),
            child: const Text("Meine Geschichte"),
          ),
          TextButton(
            onPressed: () async => await GoRouter.of(context).push("/info"),
            child: const Text("Persönliche Informationen"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}
