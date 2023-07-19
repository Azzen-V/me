import 'package:flutter/material.dart';

import '../default_screen.dart';
import 'personal_information_view.dart';

class PersonalInformationScreen extends StatelessWidget {
  static const double _mobileBreakpoint = 950;
  final String label;
  const PersonalInformationScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DefaultScreen(
          label: label,
          mobilePadding: constraints.maxWidth <= _mobileBreakpoint,
          child: const PersonalInformationView(mobileBreakpoint: _mobileBreakpoint),
        );
      },
    );
  }
}
