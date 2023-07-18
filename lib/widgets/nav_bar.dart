import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/widgets/separator.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FilledButton(
          onPressed: () => GoRouter.of(context).push('/tech-stack'),
          child: const Text("Tech-Stack"),
        ),
        const Separator.horizontal(),
        FilledButton(
          onPressed: () => GoRouter.of(context).push('/info'),
          child: const Text("Lebenslauf"),
        ),
        const Separator.horizontal(),
        FilledButton(
          onPressed: () => GoRouter.of(context).push('/my-story'),
          child: const Text("Über mich"),
        ),
      ],
    );
  }
}
