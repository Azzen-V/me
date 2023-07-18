import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';
import 'package:me/widgets/nav_bar.dart';

import '../../widgets/bordered_image.dart';
import 'additional_hex.dart';
import 'teck_stack_hex_grid.dart';

class TechStackView extends StatelessWidget {
  const TechStackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Stack(
          alignment: Alignment.bottomCenter,
          children: [
            BorderedImage(path: "images/me_1.jpg", width: 550),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: NavBar(current: Routes.techStack),
            ),
          ],
        ),
        Transform.translate(
          offset: const Offset(-130, 0),
          child: const TechStackHexGrid(),
        ),
        Flexible(
          child: Transform.translate(
            offset: const Offset(-180, 0),
            child: const AdditionalHex(),
          ),
        )
      ],
    );
  }
}
