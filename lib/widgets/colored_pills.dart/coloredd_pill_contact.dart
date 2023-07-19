import 'package:flutter/material.dart';

import 'colored_pill.dart';

class ColoredPillContact extends StatelessWidget {
  const ColoredPillContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ColoredPill.bordered(
      "Kontaktdaten",
      textAlign: TextAlign.center,
    );
  }
}
