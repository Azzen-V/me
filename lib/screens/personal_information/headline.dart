import 'package:flutter/material.dart';

import '../../widgets/separator.dart';
import 'cv_image.dart';

class Headline extends StatelessWidget {
  final double mobileBreakpoint;
  const Headline({Key? key, required this.mobileBreakpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool mobile = constraints.maxWidth <= mobileBreakpoint;
        return Row(
          children: [
            if (!mobile) const CVImage(),
            Expanded(child: _nameAndTitle(context, constraints.maxWidth, mobile)),
          ],
        );
      },
    );
  }

  Widget _nameAndTitle(BuildContext context, double maxWidth, [bool mobile = false]) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: mobile
              ? BorderRadius.circular(100)
              : const BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Column(
          crossAxisAlignment: mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Text(
              "Vanessa Gerdelmann",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
            const Separator.vertical(),
            Text(
              "Flutter-Softwareentwicklerin",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                  ),
            ),
          ],
        ),
      );
}
