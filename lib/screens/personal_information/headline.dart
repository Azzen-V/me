import 'package:flutter/material.dart';

import '../../widgets/bordered_image.dart';
import '../../widgets/separator.dart';
import 'social.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BorderedImage(
          path: 'images/me_1.jpg',
          radius: 1000,
          width: 200,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vanessa Gerdelmann",
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                    const Separator.vertical(),
                    Text(
                      "Flutter-Softwareentwicklering",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Theme.of(context).colorScheme.surface,
                          ),
                    ),
                  ],
                ),
                const Separator.horizontal(),
                const Social(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
