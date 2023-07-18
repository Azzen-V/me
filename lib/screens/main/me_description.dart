import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';

import '../../business_logic/data/constants.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/random_color_text.dart';
import '../../widgets/separator.dart';

class MeDescription extends StatelessWidget {
  final bool mobile;
  const MeDescription({Key? key, this.mobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hey, ich bin", style: mobile ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.headlineLarge),
        Text(
          "Vanessa Gerdelmann",
          style: mobile
              ? Theme.of(context).textTheme.headlineLarge
              : Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
        ),
        Text("eine Flutter - Softwareentwicklerin", style: mobile ? Theme.of(context).textTheme.headlineLarge : Theme.of(context).textTheme.displayMedium),
        Text("aus Lingen", style: mobile ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.headlineMedium),
        const Separator.vertical(),
        Text("Ich bin", style: mobile ? Theme.of(context).textTheme.headlineMedium : Theme.of(context).textTheme.headlineLarge),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Wrap(
            runSpacing: 12,
            spacing: 12,
            children: List.generate(
              Constants.characteristics.length,
              (index) => RandomColorText(
                Constants.characteristics[index],
                style: mobile ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
        const Separator.vertical(factor: 3),
        Text(
          "Neugierig auf mehr?",
          style: mobile ? Theme.of(context).textTheme.headlineSmall : Theme.of(context).textTheme.headlineMedium,
        ),
        const Separator.vertical(),
        NavBar(current: Routes.main, mobile: mobile),
      ],
    );
  }
}
