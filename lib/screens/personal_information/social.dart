import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import '../../widgets/separator.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton.filledTonal(
          onPressed: () => _launchUrl("https://www.instagram.com/azzen_v/"),
          icon: const Icon(FontAwesomeIcons.instagram),
        ),
        const Separator.horizontal(),
        IconButton.filledTonal(
          onPressed: () {
            var whatsapp = "+491744083363";
            var whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=Hallo Vanessa, ich habe Dich über Deine Website gefunden.";
            _launchUrl(whatsappURlAndroid);
          },
          icon: const Icon(FontAwesomeIcons.whatsapp),
        ),
        const Separator.horizontal(),
        IconButton.filledTonal(
          onPressed: () => _launchUrl("https://github.com/Azzen-V?tab=repositories"),
          icon: const Icon(FontAwesomeIcons.github),
        ),
      ],
    );
  }

  void _launchUrl(String url) {
    html.window.open(url, 'new tab');
  }
}
