import 'package:flutter/material.dart';

import 'colored_pill.dart';

class ColoredPillSkills extends StatelessWidget {
  const ColoredPillSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ColoredPill.bordered(
      "Kenntnisse und Interessen",
      textAlign: TextAlign.center,
    );
  }
}
