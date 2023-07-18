import 'package:flutter/material.dart';
import 'package:hexagon/hexagon.dart';

import '../../business_logic/data/constants.dart';
import '../../widgets/separator.dart';

class TechStackHexGrid extends StatelessWidget {
  final bool mobile;
  const TechStackHexGrid({Key? key, this.mobile = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: HexagonOffsetGrid.evenPointy(
            columns: mobile ? Constants.techStackMobile.first.length : Constants.techStack.first.length,
            rows: mobile ? Constants.techStackMobile.length : Constants.techStack.length,
            buildTile: (col, row) => HexagonWidgetBuilder(
              padding: 8,
              cornerRadius: 15,
              color: Theme.of(context).colorScheme.primary,
              elevation: 15,
            ),
            buildChild: (col, row) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  mobile ? Constants.techStackMobile[row][col] : Constants.techStack[row][col],
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                ),
                if ((mobile ? Constants.pathsMobile[row][col] : Constants.paths[row][col]).isNotEmpty) ...[
                  const Separator.vertical(),
                  Image.asset(
                    mobile ? Constants.pathsMobile[row][col] : Constants.paths[row][col],
                    height: 100,
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
