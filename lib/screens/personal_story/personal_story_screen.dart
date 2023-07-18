import 'package:flutter/material.dart';

import '../default_screen.dart';
import 'personal_story_view.dart';

class PersonalStoryScreen extends StatelessWidget {
  final String label;
  const PersonalStoryScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      child: const PersonalStoryView(),
    );
  }
}
