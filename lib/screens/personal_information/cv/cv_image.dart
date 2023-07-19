import 'package:flutter/material.dart';
import 'package:me/screens/personal_information/social.dart';

import '../../../widgets/bordered_image.dart';

class CVImage extends StatelessWidget {
  const CVImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.bottomCenter,
      children: [
        BorderedImage(
          path: 'assets/images/me_1.jpg',
          radius: 1000,
          width: 200,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: Social(),
        ),
      ],
    );
  }
}
