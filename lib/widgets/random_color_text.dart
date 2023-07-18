import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorText extends StatelessWidget {
  final Random random = Random();
  final String data;
  final TextStyle? style;
  RandomColorText(this.data, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    Color color = _getRandomColor();
    while (color.computeLuminance() <= 0.25) {
      color = _getRandomColor();
    }
    return Text(
      data,
      style: style?.copyWith(color: color),
    );
  }

  Color _getRandomColor() {
    return Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }
}
