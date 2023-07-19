import 'package:flutter/material.dart';
import 'package:me/screens/personal_information/cv/cv_image.dart';
import 'package:me/screens/personal_information/headline/name_and_title.dart';

import '../../business_logic/routing/routes.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/separator.dart';
import 'cv/mobile_cv.dart';

class PersonalInformationMobileView extends StatelessWidget {
  const PersonalInformationMobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        NavBar(current: Routes.info, mobile: true),
        Separator.vertical(factor: 2),
        NameAndTitle(mobile: true),
        Separator.vertical(factor: 3),
        CVImage(),
        Separator.vertical(factor: 3),
        MobileCV(),
      ],
    );
  }
}
