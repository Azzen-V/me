import 'package:flutter/material.dart';

import '../../business_logic/routing/routes.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/separator.dart';
import 'teck_stack_hex_grid.dart';

class TechStackMediumView extends StatelessWidget {
  const TechStackMediumView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            NavBar(current: Routes.techStack, mobile: constraints.maxWidth < 810),
            const Separator.vertical(),
            const TechStackHexGrid(mobile: true),
          ],
        );
      },
    );
  }
}
