import 'package:flutter/material.dart';

import '../../business_logic/routing/routes.dart';
import '../../widgets/bordered_image.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/separator.dart';
import 'me_description.dart';

class MainViewMedium extends StatelessWidget {
  const MainViewMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Row(
          children: [
            Flexible(child: BorderedImage(path: 'images/me_2.jpg')),
            Separator.horizontal(factor: 3),
            MeDescription(mobile: true),
          ],
        ),
        const Separator.vertical(factor: 3),
        Text(
          "Neugierig auf mehr?",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Separator.vertical(),
        const NavBar(current: Routes.main),
      ],
    );
  }
}
