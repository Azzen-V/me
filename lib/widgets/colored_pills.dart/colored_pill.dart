import 'package:flutter/material.dart';

class ColoredPill extends StatelessWidget {
  final String text;
  final bool filled;
  final TextAlign textAlign;
  const ColoredPill._(this.text, {Key? key, required this.textAlign, required this.filled}) : super(key: key);

  const ColoredPill.filled(String text, {Key? key, required TextAlign textAlign}) : this._(text, key: key, filled: true, textAlign: textAlign);

  const ColoredPill.bordered(String text, {Key? key, required TextAlign textAlign}) : this._(text, key: key, filled: false, textAlign: textAlign);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: filled ? Theme.of(context).colorScheme.primary : null,
        border: !filled
            ? Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 4,
              )
            : null,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
      child: Text(
        text,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              color: filled ? Theme.of(context).colorScheme.surface : null,
            ),
      ),
    );
  }
}
