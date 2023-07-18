import 'package:flutter/material.dart';

import '../default_screen.dart';
import 'main_view.dart';

class MainScreen extends StatelessWidget {
  final String label;
  const MainScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      child: const MainView(),
    );
  }
}
