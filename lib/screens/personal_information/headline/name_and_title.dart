import 'package:flutter/material.dart';

import '../../../widgets/separator.dart';

class NameAndTitle extends StatelessWidget {
  final bool mobile;
  const NameAndTitle({Key? key, this.mobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: mobile
            ? BorderRadius.circular(20)
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
            textAlign: mobile ? TextAlign.center : TextAlign.start,
            style: (mobile ? Theme.of(context).textTheme.headlineMedium : Theme.of(context).textTheme.displayMedium)?.copyWith(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          const Separator.vertical(),
          Text(
            "Flutter-Softwareentwicklerin",
            textAlign: mobile ? TextAlign.center : TextAlign.start,
            style: (mobile ? Theme.of(context).textTheme.headlineSmall : Theme.of(context).textTheme.displaySmall)?.copyWith(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ],
      ),
    );
  }
}
