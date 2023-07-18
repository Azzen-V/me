import 'package:flutter/material.dart';

import '../../widgets/bordered_image.dart';
import '../../widgets/separator.dart';
import 'me_description.dart';

class MainViewMobile extends StatelessWidget {
  const MainViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MeDescription(mobile: true),
        Separator.vertical(factor: 3),
        BorderedImage(path: 'images/me_2.jpg'),
      ],
    );
  }
}
