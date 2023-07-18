import 'package:flutter/material.dart';
import 'package:me/screens/main/me_description.dart';
import 'package:me/widgets/bordered_image.dart';
import 'package:me/widgets/separator.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BorderedImage(path: 'images/me_2.jpg', width: 550),
        Separator.horizontal(factor: 3),
        Flexible(child: MeDescription()),
      ],
    );
  }
}
