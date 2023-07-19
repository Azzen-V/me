import 'package:flutter/material.dart';

import '../../business_logic/routing/routes.dart';
import '../../widgets/bordered_image.dart';
import '../../widgets/nav_bar.dart';
import 'teck_stack_hex_grid.dart';

class TechStackView extends StatelessWidget {
  static const double _hexGridOffset = -100;
  const TechStackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Transform.translate(
          offset: const Offset(_hexGridOffset * -0.5, 0),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  BorderedImage(path: "assets/images/me_1.jpg", width: constraints.maxWidth * 0.3),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: NavBar(current: Routes.techStack),
                  ),
                ],
              ),
              Flexible(
                child: Transform.translate(
                  offset: const Offset(_hexGridOffset, 0),
                  child: const TechStackHexGrid(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
