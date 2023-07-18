import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  final Widget child;
  final String label;
  final List<TextButton> destinations;
  const DefaultScreen({
    Key? key,
    required this.child,
    required this.label,
    this.destinations = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(label),
        actions: destinations,
      ),
      body: child,
    );
  }
}
