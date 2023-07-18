import 'package:flutter/material.dart';
import 'package:me/screens/default_screen.dart';
import 'package:me/screens/tech_stack/tech_stack_medium_view.dart';
import 'package:me/screens/tech_stack/tech_stack_view.dart';

class TechStackScreen extends StatelessWidget {
  final String label;
  const TechStackScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 1740) {
          return const TechStackMediumView();
        }
        return const TechStackView();
      }),
    );
  }
}
