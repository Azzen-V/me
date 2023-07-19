import 'package:flutter/material.dart';

import '../../../widgets/separator.dart';

class ExpandableItem extends StatelessWidget {
  final void Function() onTap;
  final Widget child;
  final Animation<double> animation;
  final Map<String, String>? items;
  final Widget? animatedChild;
  ExpandableItem({
    Key? key,
    required this.animation,
    this.items,
    required this.onTap,
    required this.child,
    this.animatedChild,
  }) : super(key: key) {
    assert(animatedChild != null || items != null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: onTap,
          child: child,
        ),
        const Separator.vertical(),
        SizeTransition(
          sizeFactor: animation,
          child: animatedChild ??
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: _items(items!, context),
              ),
        )
      ],
    );
  }

  List<Widget> _items(Map<String, String> map, BuildContext context) => List.generate(
        map.length,
        (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                map.keys.toList()[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Separator.vertical(),
              Text(
                map.values.toList()[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const Separator.vertical(factor: 2),
            ],
          );
        },
      );
}
