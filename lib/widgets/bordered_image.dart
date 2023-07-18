import 'package:flutter/material.dart';

class BorderedImage extends StatelessWidget {
  final String path;
  const BorderedImage({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary,
            offset: const Offset(-15, -15),
          ),
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withGreen(255),
            offset: const Offset(15, 15),
          ),
        ],
      ),
      child: Image.asset(path),
    );
  }
}
