import 'package:flutter/material.dart';
import 'package:me/screens/personal_information/headline/name_and_title.dart';

import '../cv/cv_image.dart';

class Headline extends StatelessWidget {
  final double mobileBreakpoint;
  const Headline({Key? key, required this.mobileBreakpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool mobile = constraints.maxWidth <= mobileBreakpoint;
        return Row(
          children: [
            if (!mobile) const CVImage(),
            Expanded(child: NameAndTitle(mobile: mobile)),
          ],
        );
      },
    );
  }
}
