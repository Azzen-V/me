import 'package:flutter/material.dart';

import 'colored_pill.dart';

class ColoredPillSchool extends StatelessWidget {
  final bool center;
  const ColoredPillSchool({
    super.key,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredPill.filled(
      "Schulische Bildung",
      textAlign: center ? TextAlign.center : TextAlign.end,
    );
  }
}
