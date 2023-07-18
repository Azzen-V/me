import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/widgets/separator.dart';

import '../business_logic/routing/routes.dart';

class NavBar extends StatelessWidget {
  final Routes current;
  const NavBar({Key? key, required this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Visibility(
          visible: current != Routes.main,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FilledButton(
                onPressed: () => GoRouter.of(context).go('/'),
                child: const Text("Das bin ich"),
              ),
              const Separator.horizontal(),
            ],
          ),
        ),
        Visibility(
          visible: current != Routes.techStack,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FilledButton(
                onPressed: () => GoRouter.of(context).go('/tech-stack'),
                child: const Text("Tech-Stack"),
              ),
              const Separator.horizontal(),
            ],
          ),
        ),
        Visibility(
          visible: current != Routes.info,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FilledButton(
                onPressed: () => GoRouter.of(context).go('/info'),
                child: const Text("Lebenslauf"),
              ),
              const Separator.horizontal(),
            ],
          ),
        ),
        Visibility(
          visible: current != Routes.story,
          child: FilledButton(
            onPressed: () => GoRouter.of(context).go('/my-story'),
            child: const Text("Über mich"),
          ),
        ),
      ],
    );
  }
}
