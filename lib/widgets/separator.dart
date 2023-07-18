import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final double size;
  final bool vertical;
  final double factor;
  const Separator._({
    Key? key,
    required this.size,
    required this.vertical,
    required this.factor,
  }) : super(key: key);

  const Separator.vertical({Key? key, double? size, double factor = 1}) : this._(key: key, size: (size ?? 15 * factor), vertical: true, factor: factor);

  const Separator.horizontal({Key? key, double? size, double factor = 1}) : this._(key: key, size: (size ?? 15 * factor), vertical: false, factor: factor);

  @override
  Widget build(BuildContext context) {
    if (vertical) {
      return SizedBox(height: size);
    }

    return SizedBox(width: size);
  }
}
