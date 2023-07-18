import 'package:flutter/material.dart';
import 'package:me/widgets/separator.dart';

class IconThreeLines extends StatelessWidget {
  final IconData icon;
  final String? title;
  final String line1;
  final String? line2;
  const IconThreeLines({
    Key? key,
    required this.icon,
    required this.line1,
    this.line2,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 32),
        const Separator.horizontal(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title!,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            Text(
              line1,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            if (line2 != null)
              Text(
                line2!,
                style: Theme.of(context).textTheme.titleLarge,
              ),
          ],
        ),
      ],
    );
  }
}
