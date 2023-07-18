import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';
import 'package:me/widgets/nav_bar.dart';

import '../../widgets/separator.dart';
import 'cv.dart';
import 'headline.dart';

class PersonalInformationView extends StatelessWidget {
  const PersonalInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        NavBar(current: Routes.info),
        Headline(),
        Separator.vertical(factor: 3),
        CV(),
      ],
    );
  }
}
