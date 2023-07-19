import 'package:flutter/material.dart';
import 'package:me/screens/main/main_view_medium.dart';
import 'package:me/screens/main/main_view_mobile.dart';

import '../default_screen.dart';
import 'main_view.dart';

class MainScreen extends StatelessWidget {
  final String label;
  const MainScreen({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      label: label,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 850) {
          return const Center(child: MainViewMobile());
        } else if (constraints.maxWidth <= 1100) {
          return const MainViewMedium();
        }
        return const MainView();
      }),
    );
  }
}
