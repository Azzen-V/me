import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String data;
  const LargeText(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.surface,
          ),
    );
  }
}
