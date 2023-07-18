import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

import '../../business_logic/data/constants.dart';
import '../../widgets/separator.dart';

class TechStackHexGrid extends StatelessWidget {
  const TechStackHexGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
