import 'package:flutter/material.dart';

import '../../widgets/separator.dart';

class HexContent extends StatelessWidget {
  final String label;
  final bool darker;
  final String path;
  final bool showImage;
  final double imgSize;
  const HexContent({
    Key? key,
    required this.label,
    required this.path,
    this.darker = false,
    this.showImage = true,
    this.imgSize = 70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: darker ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.inversePrimary,
              ),
        ),
        if (path.isNotEmpty && showImage) ...[
          const Separator.vertical(),
          Image.asset(
            path,
            height: imgSize,
          ),
        ],
      ],
    );
  }
}
