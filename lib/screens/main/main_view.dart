import 'package:flutter/material.dart';
import 'package:me/screens/main/me_description.dart';
import 'package:me/widgets/bordered_image.dart';
import 'package:me/widgets/separator.dart';

import '../../business_logic/routing/routes.dart';
import '../../widgets/nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(child: BorderedImage(path: 'images/me_2.jpg', width: 450)),
        const Separator.horizontal(factor: 3),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MeDescription(),
              const Separator.vertical(factor: 3),
              Text(
                "Neugierig auf mehr?",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Separator.vertical(),
              const NavBar(current: Routes.main),
            ],
          ),
        ),
      ],
    );
  }
}
