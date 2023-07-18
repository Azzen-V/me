import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:me/widgets/bordered_image.dart';
import 'package:me/widgets/separator.dart';

import '../../business_logic/data/constants.dart';

class TechStackView extends StatelessWidget {
  const TechStackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BorderedImage(path: "images/me_1.jpg"),
        Transform.translate(
          offset: const Offset(-130, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1100),
                child: HexagonOffsetGrid.evenPointy(
                  columns: Constants.techStack.first.length,
                  rows: Constants.techStack.length,
                  buildTile: (col, row) {
                    return HexagonWidgetBuilder(
                      padding: 8,
                      cornerRadius: 15,
                      color: Theme.of(context).colorScheme.primary,
                      elevation: 15,
                    );
                  },
                  buildChild: (col, row) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Constants.techStack[row][col],
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: Theme.of(context).colorScheme.inversePrimary,
                            ),
                      ),
                      const Separator.vertical(),
                      Image.asset(Constants.paths[row][col], height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Transform.translate(
            offset: const Offset(-180, 0),
            child: HexagonWidget.pointy(
              width: 300,
              color: Theme.of(context).colorScheme.inversePrimary,
              cornerRadius: 15,
              elevation: 15,
              child: Text(
                "... und alles Weitere kann ich lernen",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
