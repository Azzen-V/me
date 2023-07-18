import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/widgets/separator.dart';

import '../business_logic/routing/routes.dart';

class NavBar extends StatelessWidget {
  final Routes current;
  final bool mobile;
  const NavBar({Key? key, required this.current, this.mobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (mobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: items(context),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: items(context),
    );
  }

  List<Widget> items(BuildContext context) => [
        if (current != Routes.main) ...[
          FilledButton(
            onPressed: () => GoRouter.of(context).go('/'),
            child: const Text("Das bin ich"),
          ),
          const Separator.both(),
        ],
        if (current != Routes.techStack) ...[
          FilledButton(
            onPressed: () => GoRouter.of(context).go('/tech-stack'),
            child: const Text("Tech-Stack"),
          ),
          const Separator.both(),
        ],
        if (current != Routes.info) ...[
          FilledButton(
            onPressed: () => GoRouter.of(context).go('/info'),
            child: const Text("Lebenslauf"),
          ),
          const Separator.both(),
        ],
        if (current != Routes.story)
          FilledButton(
            onPressed: () => GoRouter.of(context).go('/my-story'),
            child: const Text("Über mich"),
          ),
      ];
}
