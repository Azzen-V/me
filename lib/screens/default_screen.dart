import 'package:flutter/material.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        EdgeInsets padding;
        if (constraints.maxWidth <= 700) {
          padding = const EdgeInsets.symmetric(vertical: 30, horizontal: 30);
        } else {
          padding = const EdgeInsets.symmetric(vertical: 100, horizontal: 150);
        }
        return Scaffold(
          body: Container(
            constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(-0.3, -0.8),
                stops: const [0.0, 0.8, 0.8, 1],
                colors: [
                  Theme.of(context).colorScheme.inversePrimary,
                  Theme.of(context).colorScheme.inversePrimary,
                  Theme.of(context).colorScheme.background,
                  Theme.of(context).colorScheme.background,
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: padding,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
