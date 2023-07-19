import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';
import 'package:me/widgets/nav_bar.dart';

import '../../widgets/bordered_image.dart';
import '../../widgets/separator.dart';
import 'me_description.dart';

class MainViewMobile extends StatelessWidget {
  const MainViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MeDescription(mobile: true),
        const Separator.vertical(factor: 3),
        LayoutBuilder(
          builder: ((context, constraints) {
            print(constraints.maxWidth);
            if (constraints.maxWidth <= 620) {
              return Column(
                children: [
                  _image,
                  const Separator.vertical(factor: 2),
                  _navBar(mobile: true),
                ],
              );
            }
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                _image,
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  child: _navBar(),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }

  Widget _navBar({bool mobile = false}) {
    return NavBar(current: Routes.main, mobile: mobile);
  }

  Widget get _image {
    return const BorderedImage(path: 'images/me_2.jpg', width: 400);
  }
}
