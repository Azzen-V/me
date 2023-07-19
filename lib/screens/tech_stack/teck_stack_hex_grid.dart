import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';
import 'package:me/screens/tech_stack/hex_content.dart';

import '../../business_logic/data/constants.dart';

class TechStackHexGrid extends StatelessWidget {
  static const boundary = 900;
  const TechStackHexGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        List<List<String>> paths = constraints.maxWidth >= boundary ? Constants.paths : Constants.pathsMobile;
        List<List<String>> techStack = constraints.maxWidth >= boundary ? Constants.techStack : Constants.techStackMobile;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: HexagonOffsetGrid.evenPointy(
                columns: techStack.first.length,
                rows: techStack.length,
                buildTile: (col, row) {
                  bool darker = constraints.maxWidth >= boundary ? col == 3 : row == 3;
                  return HexagonWidgetBuilder(
                    padding: 8,
                    cornerRadius: 15,
                    color: darker ? Theme.of(context).colorScheme.inversePrimary : Theme.of(context).colorScheme.primary,
                    elevation: 15,
                  );
                },
                buildChild: (col, row) => HexContent(
                  label: techStack[row][col],
                  path: paths[row][col],
                  showImage: constraints.maxWidth >= 650,
                  darker: constraints.maxWidth >= boundary ? col == 3 : row == 3,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
