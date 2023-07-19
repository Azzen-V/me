// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;

import '../../widgets/separator.dart';

class Social extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  const Social({Key? key, this.mainAxisAlignment = MainAxisAlignment.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton.filled(
          onPressed: () => _launchUrl("https://www.instagram.com/azzen_v/"),
          icon: const Icon(FontAwesomeIcons.instagram),
        ),
        const Separator.horizontal(),
        IconButton.filled(
          onPressed: () {
            var whatsapp = "+491744083363";
            var whatsappURlAndroid = "whatsapp://send?phone=$whatsapp&text=Hallo Vanessa, ich habe Dich über Deine Website gefunden.";
            _launchUrl(whatsappURlAndroid);
          },
          icon: const Icon(FontAwesomeIcons.whatsapp),
        ),
        const Separator.horizontal(),
        IconButton.filled(
          onPressed: () => _launchUrl("https://github.com/Azzen-V?tab=repositories"),
          icon: const Icon(FontAwesomeIcons.github),
        ),
      ],
    );
  }

  void _launchUrl(String url) => html.window.open(url, 'new tab');
}
