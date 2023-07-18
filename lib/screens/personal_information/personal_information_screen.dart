import 'package:flutter/material.dart';

import '../default_screen.dart';
import 'personal_information_view.dart';

class PersonalInformationScreen extends StatelessWidget {
  final String label;
  const PersonalInformationScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      child: const PersonalInformationView(),
    );
  }
}
