import 'package:flutter/material.dart';
import 'package:me/business_logic/routing/routes.dart';
import 'package:me/widgets/nav_bar.dart';

import '../../widgets/separator.dart';
import 'cv/cv.dart';
import 'headline/headline.dart';

class PersonalInformationView extends StatelessWidget {
  final double mobileBreakpoint;
  const PersonalInformationView({Key? key, required this.mobileBreakpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: constraints.maxWidth <= mobileBreakpoint ? CrossAxisAlignment.center : CrossAxisAlignment.end,
          children: [
            const NavBar(current: Routes.info),
            const Separator.vertical(factor: 2),
            Headline(mobileBreakpoint: mobileBreakpoint),
            const Separator.vertical(factor: 3),
            CV(mobileBreakpoints: mobileBreakpoint),
          ],
        );
      },
    );
  }
}
