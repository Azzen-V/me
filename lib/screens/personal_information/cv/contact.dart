import 'package:flutter/material.dart';
import 'package:me/business_logic/data/constants.dart';
import 'package:me/business_logic/utils.dart';

import '../../../widgets/icon_three_lines.dart';
import '../../../widgets/separator.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Utils.launchUrl(
            "https://www.google.de/maps/place/Brunnenstra%C3%9Fe+39,+49809+Lingen+(Ems)/@52.51816,7.3240351,17z/data=!3m1!4b1!4m6!3m5!1s0x47b787b526fa208d:0xc11323c5d2f46ca9!8m2!3d52.51816!4d7.32661!16s%2Fg%2F11c5p_cyyz?entry=ttu",
          ),
          child: const IconThreeLines(
            icon: Icons.location_on,
            title: "Adresse",
            line1: "Brunnenstr. 39",
            line2: "49809 Lingen",
          ),
        ),
        const Separator.vertical(),
        InkWell(
          onTap: () => Utils.launchUrl("mailto:${Constants.email}"),
          child: const IconThreeLines(
            icon: Icons.mail,
            title: "E-Mail",
            line1: Constants.email,
          ),
        ),
        const Separator.vertical(),
        InkWell(
          onTap: () => Utils.launchUrl("tel:${Constants.phone}"),
          child: const IconThreeLines(
            icon: Icons.phone,
            title: "Telefon",
            line1: Constants.phone,
          ),
        ),
      ],
    );
  }
}
