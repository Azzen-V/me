import 'package:flutter/material.dart';

import '../../../widgets/icon_three_lines.dart';
import '../../../widgets/separator.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconThreeLines(
          icon: Icons.location_on,
          title: "Adresse",
          line1: "Brunnenstr. 39",
          line2: "49809 Lingen",
        ),
        Separator.vertical(),
        IconThreeLines(
          icon: Icons.mail,
          title: "E-Mail",
          line1: "vgerdelmann@icloud.com",
        ),
        Separator.vertical(),
        IconThreeLines(
          icon: Icons.phone,
          title: "Telefon",
          line1: "01744083363",
        ),
      ],
    );
  }
}
