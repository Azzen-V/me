import 'package:flutter/material.dart';

import 'colored_pill.dart';

class ColoredPillWork extends StatelessWidget {
  final bool center;
  const ColoredPillWork({
    super.key,
    required this.center,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredPill.filled(
      "Berufliche Tätigkeit",
      textAlign: center ? TextAlign.center : TextAlign.end,
    );
  }
}
