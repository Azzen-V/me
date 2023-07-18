import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:me/widgets/random_color_text.dart';
import 'package:me/widgets/separator.dart';

class MeDescription extends StatelessWidget {
  final List<String> characteristics = [
    "leidenschaftliche Softwareenwicklerin",
    "immer für ein Lächeln zu haben",
    "Designerin",
    "Gamerin",
    "Frontend-Dev",
    "Motorsport-begeistert",
    "Firebase-Profi",
    "Fußballerin",
    "Supabase-Profi",
    "teamfähig",
    "Flutter-Liebhaberin",
    "Leseratte",
    "Technik-Freundin"
  ]..shuffle();
  MeDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Hey, ich bin", style: Theme.of(context).textTheme.headlineLarge),
        Text(
          "Vanessa Gerdelmann",
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        Text("eine Flutter-Softwareentwicklering", style: Theme.of(context).textTheme.displayMedium),
        Text("aus Lingen", style: Theme.of(context).textTheme.headlineMedium),
        const Separator.vertical(),
        Text("Ich bin", style: Theme.of(context).textTheme.headlineLarge),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Wrap(
            runSpacing: 12,
            spacing: 12,
            children: List.generate(
              characteristics.length,
              (index) => RandomColorText(
                characteristics[index],
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ),
        const Separator.vertical(factor: 3),
        Text(
          "Neugierig auf mehr?",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Separator.vertical(),
        Row(
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
        ),
      ],
    );
  }
}
