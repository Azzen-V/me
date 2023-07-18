import 'package:flutter/material.dart';

class BorderedImage extends StatelessWidget {
  final String path;
  final double radius;
  final double? width;
  const BorderedImage({
    Key? key,
    required this.path,
    this.radius = 25,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
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
      child: Image.asset(path, width: width),
    );
  }
}
