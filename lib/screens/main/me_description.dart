import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';

import '../../business_logic/data/constants.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/random_color_text.dart';
import '../../widgets/separator.dart';

class MeDescription extends StatelessWidget {
  const MeDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hey, ich bin", style: Theme.of(context).textTheme.headlineLarge),
        Text(
          "Vanessa Gerdelmann",
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        Text("eine Flutter-Softwareentwicklering", style: Theme.of(context).textTheme.displayMedium),
        Text("aus Lingen", style: Theme.of(context).textTheme.headlineMedium),
        const Separator.vertical(),
        Text("Ich bin", style: Theme.of(context).textTheme.headlineLarge),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Wrap(
            runSpacing: 12,
            spacing: 12,
            children: List.generate(
              Constants.characteristics.length,
              (index) => RandomColorText(
                Constants.characteristics[index],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
        const Separator.vertical(factor: 3),
        Text(
          "Neugierig auf mehr?",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Separator.vertical(),
        const NavBar(current: Routes.main),
      ],
    );
  }
}
